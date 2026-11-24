"""CNN mínima (2 convoluciones 3x3 con stride 2 + la cabeza densa del MLP desplegado) y su inferencia con NumPy.

La entrada es el mismo vector plano que usa el MLP (3*ancho*alto, planar R,G,B, por filas), así que dataset,
preproceso y lazo cerrado no cambian: la red lo reorganiza en (3, alto, ancho).
"""
from pathlib import Path

import numpy as np
import torch
import torch.nn as nn

CANALES = (8, 16)


class CNNMinima(nn.Module):
    def __init__(self, tam=(32, 24), canales=CANALES, oculta=(32, 256)):
        super().__init__()
        self.tam = tam
        c1, c2 = canales
        self.convs = nn.ModuleList([nn.Conv2d(3, c1, 3, stride=2, padding=1), nn.Conv2d(c1, c2, 3, stride=2, padding=1)])
        ancho, alto = tam
        for _ in self.convs:
            ancho, alto = (ancho + 1) // 2, (alto + 1) // 2
        dims = (c2 * ancho * alto,) + tuple(oculta) + (2,)
        self.lineales = nn.ModuleList([nn.Linear(a, b) for a, b in zip(dims[:-1], dims[1:])])

    def forward(self, x):
        x = x.reshape(-1, 3, self.tam[1], self.tam[0])
        for c in self.convs:
            x = torch.relu(c(x))
        x = x.flatten(1)
        for i, l in enumerate(self.lineales):
            x = l(x)
            if i < len(self.lineales) - 1:
                x = torch.relu(x)
        return x


def construir_cnn(tam=(32, 24)) -> nn.Module:
    return CNNMinima(tam)


def exportar_cnn(modelo: CNNMinima, ruta: Path) -> None:
    d = {}
    for i, c in enumerate(modelo.convs):
        d[f"k{i}w"], d[f"k{i}b"] = c.weight.detach().cpu().numpy(), c.bias.detach().cpu().numpy()
    for i, l in enumerate(modelo.lineales):
        d[f"w{i}"], d[f"b{i}"] = l.weight.detach().cpu().numpy(), l.bias.detach().cpu().numpy()
    np.savez(ruta, **d)
