import torch
import sys
from tqdm import tqdm
from torch import nn
import numpy as np

sys.path.append('../')
import utils as u
import Model.model as m
sys.path.append('../../')
from dataset import lilypond2matrix
from torch.utils.data import Dataset, DataLoader

# ---------------- Config ----------------
DEVICE = torch.device("cuda" if torch.cuda.is_available() else "cpu")
NUM_EPOCHS = u.NUM_EPOCHS
BATCH_SIZE = u.BATCH_SIZE
LR = u.LR_RATE

ALPHA = u.ALPHA         
BETA = u.BETA          
GAMMA = u.GAMMA         

# INPUT_DIM ahora es simplemente el largo del vector (37)
INPUT_DIM = u.INPUT_DIM 
Z_DIM = u.Z_DIM
H_DIM = u.H_DIM

# ---------------- Dataset ----------------
input_data = lilypond2matrix.torch_data  # Asumimos que ahora carga vectores (N, 37)

class CustomDataset(Dataset):
    def __init__(self, data):
        self.data = torch.tensor(data, dtype=torch.float32)

    def __len__(self):
        return len(self.data)

    def __getitem__(self, idx):
        return self.data[idx]

dataset = CustomDataset(input_data)
train_loader = DataLoader(dataset, batch_size=BATCH_SIZE, shuffle=True)

# ---------------- Model ----------------
model = m.VariationalAutoEncoder(
    input_dim=INPUT_DIM,
    h_dim=H_DIM,
    z_dim=Z_DIM
).to(DEVICE)

optimizer = torch.optim.Adam(model.parameters(), lr=LR)
# Cambiamos BCE por MSE para regresión de intervalos
mse_loss = nn.MSELoss(reduction="mean")

# ---------------- Symmetry Loss ----------------
def symmetry_loss(x_hat):
    # En intervalos, la simetría implica que la segunda mitad 
    # es el espejo negativo de la primera: [2, 1, -1, -2]
    # x_hat shape: (B, 37)
    x_rev = -torch.flip(x_hat, dims=[1])
    return torch.mean((x_hat - x_rev) ** 2)

# ---------------- Training ----------------
for epoch in range(NUM_EPOCHS):
    model.train()
    total_loss = 0.0

    loop = tqdm(train_loader, desc=f"Epoch {epoch+1}/{NUM_EPOCHS}")

    for x in loop:
        x = x.to(DEVICE)                     # (B, 37)
        
        x_hat, mu, logvar = model(x)

        # --- Losses ---
        recon = mse_loss(x_hat, x)
        kl = -0.5 * torch.mean(1 + logvar - mu.pow(2) - logvar.exp())
        sym = symmetry_loss(x_hat)

        loss = ALPHA * recon + BETA * kl + GAMMA * sym

        optimizer.zero_grad()
        loss.backward()
        optimizer.step()

        total_loss += loss.item()
        loop.set_postfix(
            loss=f"{loss.item():.4f}",
            recon=f"{recon.item():.4f}",
            sym=f"{sym.item():.4f}"
        )

torch.save(model.state_dict(), "vae.pth")