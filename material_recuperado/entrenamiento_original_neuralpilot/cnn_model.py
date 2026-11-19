import torch
import torch.nn as nn
import brevitas.nn as qnn

class CNNModel(nn.Module):
    def __init__(self, latent_features=16, dropout_rate=0.1, num_classes=2, weight_w=8):
        super(CNNModel, self).__init__()
        self.export_mode = False 
        
        self.scaler = nn.BatchNorm2d(3) 
        self.pad = nn.ZeroPad2d((0, 0, 2, 2)) 
        
        self.quant_input = qnn.QuantIdentity(bit_width=8, return_quant_tensor=True, min_val=0.0, max_val=1.0)
        
        self.conv1 = qnn.QuantConv2d(in_channels=3, out_channels=4, kernel_size=3, padding=1, stride=2, weight_bit_width=weight_w, bias=False, return_quant_tensor=True)
        self.relu1 = qnn.QuantReLU(bit_width=weight_w, return_quant_tensor=True)
        
        self.conv2 = qnn.QuantConv2d(in_channels=4, out_channels=8, kernel_size=3, padding=1, stride=2, weight_bit_width=weight_w, bias=False, return_quant_tensor=True)
        self.relu2 = qnn.QuantReLU(bit_width=weight_w, return_quant_tensor=True)
        
        self.flatten = nn.Flatten()
        self.dropout = nn.Dropout(dropout_rate)
        
        self.fc1 = qnn.QuantLinear(128, latent_features, bias=True, weight_bit_width=weight_w, return_quant_tensor=True)
        self.relu3 = qnn.QuantReLU(bit_width=weight_w, return_quant_tensor=True)
        
        self.predictor = qnn.QuantLinear(latent_features, num_classes, bias=True, weight_bit_width=weight_w, return_quant_tensor=False)

    def forward(self, x):
        # 1. ¡PRIMERO REDIMENSIONAMOS A 4D!
        if self.export_mode:
            x = x.view(1, 3, 12, 16) 
        else:
            x = x.view(-1, 3, 12, 16)
            
        # 2. AHORA SÍ, APLICAMOS ESCALADO Y PADDING A LA IMAGEN 4D
        x = self.scaler(x)
        x = self.pad(x)      # Ahora es (Batch, 3, 16, 16)
        x = self.quant_input(x)
        
        x = self.conv1(x)
        x = self.relu1(x)
        x = self.conv2(x)
        x = self.relu2(x)
        x = self.flatten(x)
        x = self.dropout(x)
        x = self.fc1(x)
        x = self.relu3(x)
        x = self.predictor(x)
        
        if hasattr(x, 'value'): x = x.value
        elif isinstance(x, tuple): x = x[0]
            
        if self.export_mode: return x.view(1, -1)
        else: return x.view(x.size(0), -1)