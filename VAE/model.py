import torch
from torch import nn
import utils as u

class VariationalAutoEncoder(nn.Module):
    def __init__(self, input_dim, h_dim=u.H_DIM, z_dim=u.Z_DIM):
        super().__init__()

        # encoder
        self.sh_2hid = nn.Linear(input_dim, h_dim)
        self.hid_2mu = nn.Linear(h_dim, z_dim)
        self.hid_2sigma = nn.Linear(h_dim, z_dim)

        # decoder
        self.z_2hid = nn.Linear(z_dim, h_dim)
        self.hid_2sh = nn.Linear(h_dim, input_dim)

        self.relu = nn.ReLU()

    def encode(self, x):
        # q_phi(z|x)
        h = self.relu(self.sh_2hid(x))
        mu, sigma = self.hid_2mu(h), self.hid_2sigma(h) # duda: RELU establece valores entre 0 y 1. Quizás sea mejor vs Linear.
        return mu, sigma

    def decode(self, z):
        # p_theta(x|z)
        h = self.relu(self.z_2hid(z))
        return torch.sigmoid(self.hid_2sh(h))

    def forward(self, x):
        mu, sigma = self.encode(x)
        epsilon = torch.randn_like(sigma)
        z_reparametrized = mu + sigma*epsilon
        x_reconstructed = self.decode(z_reparametrized)
        return x_reconstructed, mu, sigma


if __name__ == "__main__":
    x = torch.randn(4, u.INPUT_DIM)
    vae = VariationalAutoEncoder(input_dim=u.INPUT_DIM)
    x_reconstructed, mu, sigma = vae(x)
    print(x_reconstructed.shape)
    print(mu.shape)
    print(sigma.shape)
