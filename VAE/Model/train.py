import torch # type: ignore
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

# Configuration
DEVICE = torch.device("cuda" if torch.cuda.is_available() else "cpu")
INPUT_DIM = u.INPUT_DIM
H_DIM = u.H_DIM
Z_DIM = u.Z_DIM
NUM_EPOCHS = u.NUM_EPOCHS
BATCH_SIZE = u.BATCH_SIZE
LR_RATE = u.LR_RATE # Karpathy constant = 3e-4
ALPHA = u.ALPHA
BETA = u.BETA

# Dataset Loading
input_data = lilypond2matrix.torch_data

class CustomDataset(Dataset):
    def __init__(self, data):
        self.data = data

    def __len__(self):
        return len(self.data)

    def __getitem__(self, idx):
        matrix = self.data[idx].reshape(-1)
        return torch.tensor(matrix, dtype=torch.float32)

# Matrixes list
data_list = input_data
input_data = np.array(data_list)
dataset = CustomDataset(input_data)

# Create DataLoader
train_loader = DataLoader(dataset=dataset, batch_size=BATCH_SIZE, shuffle=True)
model = m.VariationalAutoEncoder(INPUT_DIM, H_DIM, Z_DIM).to(DEVICE)
optimizer = torch.optim.Adam(model.parameters(), lr=LR_RATE)
loss_fn = nn.BCELoss(reduction="sum")
scheduler = torch.optim.lr_scheduler.CyclicLR(optimizer, base_lr=3e-4, max_lr=5e-4, step_size_up=2000, mode='triangular')

# Start Training
for epoch in range(NUM_EPOCHS):
    print(f'iteration {epoch}')
    loop = tqdm(enumerate(train_loader))
    total_loss = 0
    for i, x in loop:
        # Forward pass
        x = x.to(DEVICE).view(x.shape[0], INPUT_DIM)
        x_reconstructed, mu, sigma = model(x)

        # Compute loss
        reconstruction_loss = loss_fn(x_reconstructed, x) # Push towards reconstruct image
        kl_div = -torch.sum(1 + torch.log(sigma.pow(2)) - mu.pow(2) - sigma.pow(2)) # Push towards standard gaussean

        # Backprop
        loss = ALPHA*reconstruction_loss + BETA*kl_div
        optimizer.zero_grad()
        loss.backward()
        optimizer.step()
        scheduler.step()
        loop.set_postfix(loss = loss.item())
    
torch.save(model.state_dict(), 'vae.pth')