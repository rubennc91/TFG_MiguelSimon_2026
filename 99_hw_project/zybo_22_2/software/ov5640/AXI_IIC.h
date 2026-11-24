// I2C de la cámara mediante el AXI IIC (axi_iic_0) del diseño system_v2, en modo sondeo (sin interrupciones).
// El diseño original de Digilent para la Zybo usaba el I2C de la PS; este diseño lo cambia por el AXI IIC (XDC: cam_iic_scl_io/sda_io).
#ifndef AXI_IIC_H_
#define AXI_IIC_H_
#include "I2C_Client.h"
#include "xiic_l.h"

namespace digilent {

class AXI_IIC : public I2C_Client {
public:
	explicit AXI_IIC(uint32_t base_addr) : base_(base_addr) { XIic_DynInit(base_); }

	virtual void read(uint8_t addr, uint8_t* buf, size_t count) override {
		if (XIic_DynRecv(base_, addr, buf, (uint8_t)count) != count) throw TransmitError("AXI IIC: lectura incompleta");
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
