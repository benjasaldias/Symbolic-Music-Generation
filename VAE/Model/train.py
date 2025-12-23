import torch
import sys
import os
import json
from tqdm import tqdm
from torch import nn
import numpy as np

sys.path.append('../')
import utils as u
import Model.model as m
sys.path.append('../../')
from dataset import lilypond2matrix
from torch.utils.data import Dataset, DataLoader

# --- RUTAS ---
root_dir = os.path.abspath(os.path.join(os.path.dirname(__file__), '../..'))
dataset_path = os.path.join(root_dir, "dataset", "thesaurus_data.ly")
torch_data_path = os.path.join(root_dir, "dataset", "torch_data.json")

# ---------------- Config ----------------
DEVICE = torch.device("cuda" if torch.cuda.is_available() else "cpu")
NUM_EPOCHS = u.NUM_EPOCHS
BATCH_SIZE = u.BATCH_SIZE
LR = u.LR_RATE

ALPHA = u.ALPHA         
BETA = u.BETA          
GAMMA = u.GAMMA         

INPUT_DIM = u.INPUT_DIM 
Z_DIM = u.Z_DIM 
H_DIM = u.H_DIM

# ---------------- Dataset ----------------
with open(torch_data_path, "r") as f:
    raw_data = json.load(f)

input_data = [item['x'] for item in raw_data]

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

# --- NUEVO: Scheduler para estabilizar la pérdida ---
# Reduce el LR a la mitad (factor=0.5) si la pérdida no mejora en 20 épocas
scheduler = torch.optim.lr_scheduler.ReduceLROnPlateau(
    optimizer, 
    mode='min', 
    factor=0.5, 
    patience=20, 
    verbose=True
)

mse_loss = nn.MSELoss(reduction="mean")

# ---------------- Training ----------------
for epoch in range(NUM_EPOCHS):
    model.train()
    total_loss = 0.0

    loop = tqdm(train_loader, desc=f"Epoch {epoch+1}/{NUM_EPOCHS}")

    for x in loop:
        x = x.to(DEVICE)                     # (B, 37)
        
        # Forward pass
        x_hat, mu, logvar = model(x)

        # --- Losses ---
        recon = mse_loss(x_hat, x)
        
        # KL Divergence: $$ -0.5 \cdot \sum(1 + \log(\sigma^2) - \mu^2 - \sigma^2) $$
        kl = -0.5 * torch.mean(1 + logvar - mu.pow(2) - logvar.exp())
        
        loss = ALPHA * recon + BETA * kl 

        # Backpropagation
        optimizer.zero_grad()
        loss.backward()

        # --- NUEVO: Gradient Clipping ---
        # Evita que gradientes ruidosos desestabilicen el modelo
        torch.nn.utils.clip_grad_norm_(model.parameters(), max_norm=1.0)

        optimizer.step()

        total_loss += loss.item()
        
        # Mostrar el LR actual en la barra de progreso para monitorear el scheduler
        current_lr = optimizer.param_groups[0]['lr']
        loop.set_postfix(
            loss=f"{loss.item():.4f}",
            recon=f"{recon.item():.4f}",
            lr=f"{current_lr:.1e}"
        )

    # --- Actualización del Scheduler al final de cada época ---
    avg_loss = total_loss / len(train_loader)
    scheduler.step(avg_loss)

    print(f"Epoch {epoch+1} | Avg Loss: {avg_loss:.4f} | LR: {optimizer.param_groups[0]['lr']:.6f}")

# Guardado final
torch.save(model.state_dict(), "vae.pth")
print("Entrenamiento finalizado. Modelo guardado como vae.pth")