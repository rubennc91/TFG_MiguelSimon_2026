// I2C de la cámara mediante el AXI IIC (axi_iic_0) del diseño system_v2, en modo sondeo (sin interrupciones).
// El diseño original de Digilent para la Zybo usaba el I2C de la PS; este diseño lo cambia por el AXI IIC (XDC: cam_iic_scl_io/sda_io).
#ifndef AXI_IIC_H_
#define AXI_IIC_H_
#include "I2C_Client.h"
#include "xiic_l.h"
#include "xil_io.h"
#include "sleep.h"

namespace digilent {

class AXI_IIC : public I2C_Client {
public:
	explicit AXI_IIC(uint32_t base_addr) : base_(base_addr) { XIic_DynInit(base_); }

	virtual void read(uint8_t addr, uint8_t* buf, size_t count) override {
		// Lectura directa por registros del AXI IIC (modo dinámico) con tiempo de espera: XIic_DynRecv se cuelga con este diseño (comprobado en la placa).
		if (count == 0 || count > 255) throw TransmitError("AXI IIC: longitud de lectura no válida");
		Xil_Out32(base_ + 0x108, 0x100 | (addr << 1) | 1);              // START + dirección + lectura
		Xil_Out32(base_ + 0x108, 0x200 | (uint32_t)count);              // nº de bytes y STOP
		for (size_t i = 0; i < count; i++) {
			int n = 0;
			while ((Xil_In32(base_ + 0x104) & 0x40) && n++ < 5000) usleep(10);      // SR.RX_FIFO_EMPTY
			if (Xil_In32(base_ + 0x104) & 0x40) throw TransmitError("AXI IIC: lectura sin respuesta");
			buf[i] = (uint8_t)Xil_In32(base_ + 0x10C);
		}
	}
	virtual void write(uint8_t addr, uint8_t const* buf, size_t count) override {
		uint8_t local[16];
		if (count > sizeof(local)) throw TransmitError("AXI IIC: escritura demasiado larga");
		for (size_t i = 0; i < count; i++) local[i] = buf[i];
		if (XIic_DynSend(base_, addr, local, (unsigned)count, XIIC_STOP) != count) throw TransmitError("AXI IIC: escritura incompleta (NACK)");
	}
	virtual ~AXI_IIC() { }
private:
	uint32_t base_;
};

} /* namespace digilent */
#endif
