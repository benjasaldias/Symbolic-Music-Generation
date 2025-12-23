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

ALPHA = u.ALPHA         # reconstruction
BETA = u.BETA          # KL (BAJO)
GAMMA = u.GAMMA          # symmetry

TIME = u.NUM_ROWS
PITCH = u.NOTE_RANGE
INPUT_DIM = TIME * PITCH
Z_DIM = u.Z_DIM
H_DIM = u.H_DIM

# ---------------- Dataset ----------------
input_data = lilypond2matrix.torch_data  # (N, 37, 63)

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
bce = nn.BCELoss(reduction="mean")

# ---------------- Symmetry Loss ----------------
def symmetry_loss(x_hat):
    x_rev = torch.flip(x_hat, dims=[1])
    return torch.mean((x_hat - x_rev) ** 2)

# ---------------- Training ----------------
for epoch in range(NUM_EPOCHS):
    model.train()
    total_loss = 0.0

    loop = tqdm(train_loader, desc=f"Epoch {epoch+1}/{NUM_EPOCHS}")

    for x in loop:
        x = x.to(DEVICE)                     # (B, 37, 63)
        x = x.squeeze(1)                    # [32, 37, 68]
        x_flat = x.view(x.size(0), -1)       # (B, 2331)

        x_hat_flat, mu, logvar = model(x_flat)
        x_hat = x_hat_flat.view(-1, TIME, PITCH)

        # --- Losses ---
        recon = bce(x_hat, x)
        kl = -0.5 * torch.mean(1 + logvar - mu.pow(2) - logvar.exp())
        # sym = symmetry_loss(x_hat)

        # loss = ALPHA * recon + BETA * kl + GAMMA * sym
        loss = ALPHA * recon + BETA * kl

        optimizer.zero_grad()
        loss.backward()
        optimizer.step()

        total_loss += loss.item()
        loop.set_postfix(
            loss=f"{loss.item():.4f}",
            recon=f"{recon.item():.4f}",
            # sym=f"{sym.item():.4f}"
        )

    print(f"Epoch {epoch+1} | Avg Loss: {total_loss / len(train_loader):.4f}")

torch.save(model.state_dict(), "vae.pth")
