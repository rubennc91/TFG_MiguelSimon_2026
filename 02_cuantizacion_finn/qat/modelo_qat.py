"""MLP cuantizada (Brevitas 0.6.1, la de FINN v0.9): pesos 4 bits, activaciones de a_bits. Se usa dentro del contenedor de FINN."""
import numpy as np
import torch
import torch.nn as nn

import brevitas.nn as qnn
from brevitas.quant import Int8Bias

V_MIN, V_MAX = -0.6, 13.0          # decodificación desplegada de v
W_MIN, W_MAX = -np.pi, np.pi       # y de w


class MLPq(nn.Module):
    def __init__(self, entrada: int, ocultas=(32, 256), w_bits: int = 4, a_bits: int = 8):
        super().__init__()
        self.quant_in = qnn.QuantIdentity(bit_width=8, min_val=0.0, max_val=1.0, return_quant_tensor=True)
        self.fc1 = qnn.QuantLinear(entrada, ocultas[0], bias=True, weight_bit_width=w_bits, bias_quant=Int8Bias, return_quant_tensor=True)
        self.relu1 = qnn.QuantReLU(bit_width=a_bits, return_quant_tensor=True)
        self.fx = qnn.QuantLinear(ocultas[0], ocultas[1], bias=True, weight_bit_width=w_bits, bias_quant=Int8Bias, return_quant_tensor=True)
        self.relu2 = qnn.QuantReLU(bit_width=a_bits, return_quant_tensor=True)
        self.predictor = qnn.QuantLinear(ocultas[1], 2, bias=True, weight_bit_width=w_bits, bias_quant=Int8Bias, return_quant_tensor=False)

    def forward(self, x):
        return self.predictor(self.relu2(self.fx(self.relu1(self.fc1(self.quant_in(x))))))

    def cargar_flotante(self, npz: str) -> None:
        """Copia los pesos de una MLP flotante exportada con mlp_experto.exportar (w0,b0,w1,b1,w2,b2)."""
        z = np.load(npz)
        with torch.no_grad():
            for capa, i in ((self.fc1, 0), (self.fx, 1), (self.predictor, 2)):
                capa.weight.copy_(torch.from_numpy(z[f"w{i}"])); capa.bias.copy_(torch.from_numpy(z[f"b{i}"]))


class CNNq(nn.Module):
    """CNN mínima cuantizada (misma estructura que mlp_experto.cnn.CNNMinima): 2 conv 3x3 stride 2 + densas 32-256-2."""
    def __init__(self, tam=(32, 24), canales=(8, 16), ocultas=(32, 256), w_bits: int = 4, a_bits: int = 8):
        super().__init__()
        self.tam = tam
        c1, c2 = canales
        ancho, alto = tam
        for _ in range(2):
            ancho, alto = (ancho + 1) // 2, (alto + 1) // 2
        q = dict(weight_bit_width=w_bits, bias_quant=Int8Bias, return_quant_tensor=True)
        self.quant_in = qnn.QuantIdentity(bit_width=8, min_val=0.0, max_val=1.0, return_quant_tensor=True)
        self.conv1 = qnn.QuantConv2d(3, c1, 3, stride=2, padding=1, bias=True, **q)
        self.relu1 = qnn.QuantReLU(bit_width=a_bits, return_quant_tensor=True)
        self.conv2 = qnn.QuantConv2d(c1, c2, 3, stride=2, padding=1, bias=True, **q)
        self.relu2 = qnn.QuantReLU(bit_width=a_bits, return_quant_tensor=True)
        self.fc1 = qnn.QuantLinear(c2 * ancho * alto, ocultas[0], bias=True, **q)
        self.relu3 = qnn.QuantReLU(bit_width=a_bits, return_quant_tensor=True)
        self.fx = qnn.QuantLinear(ocultas[0], ocultas[1], bias=True, **q)
        self.relu4 = qnn.QuantReLU(bit_width=a_bits, return_quant_tensor=True)
        self.predictor = qnn.QuantLinear(ocultas[1], 2, bias=True, weight_bit_width=w_bits, bias_quant=Int8Bias, return_quant_tensor=False)

    def forward(self, x):
        if x.dim() == 2:                       # vector plano (entrenamiento); 4-D (3, alto, ancho) al exportar a FINN
            x = x.reshape(-1, 3, self.tam[1], self.tam[0])
        x = self.quant_in(x)
        x = self.relu2(self.conv2(self.relu1(self.conv1(x))))
        x = x.view(x.shape[0], -1)
        return self.predictor(self.relu4(self.fx(self.relu3(self.fc1(x)))))

    def cargar_flotante(self, npz: str) -> None:
        """Copia los pesos de la CNN flotante exportada con mlp_experto.cnn.exportar_cnn (k0w,k0b,k1w,k1b,w0,b0,...)."""
        z = np.load(npz)
        with torch.no_grad():
            for capa, n in ((self.conv1, "k0"), (self.conv2, "k1")):
                capa.weight.copy_(torch.from_numpy(z[n + "w"])); capa.bias.copy_(torch.from_numpy(z[n + "b"]))
            for capa, i in ((self.fc1, 0), (self.fx, 1), (self.predictor, 2)):
                capa.weight.copy_(torch.from_numpy(z[f"w{i}"])); capa.bias.copy_(torch.from_numpy(z[f"b{i}"]))


def desnormalizar(vn, wn):
    return vn * (V_MAX - V_MIN) + V_MIN, wn * (W_MAX - W_MIN) + W_MIN


def decodificar(salida: torch.Tensor):
    s = salida.clamp(0.0, 1.0)                       # el servidor satura a [0, 1]
    return desnormalizar(s[:, 0], s[:, 1])
