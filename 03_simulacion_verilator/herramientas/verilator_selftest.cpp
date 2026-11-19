// Autotest del acelerador FINN simulado con Verilator (sin OpenCV ni UDP).
// Envía dos veces una imagen (fichero .raw de 576 bytes RGB planar, o ceros si
// no se pasa argumento) y muestra bytes aceptados, salidas, ciclos y v/w.
// Comparar con: python3 03_simulacion_verilator/herramientas/golden_model.py <mismo .raw>
// Valores esperados con la imagen de ceros: raw=(2281,1709), 26885 ciclos.
// IMPORTANTE: ejecutar desde stitched_ip/verilator_sim (los .dat de pesos se
// cargan con ruta relativa; si no se encuentran, los pesos valen 0).
#include <verilated.h>
#include "Vfinn_design_wrapper.h"
#include <cstdio>
#include <cstdint>
#include <vector>
static void tick(Vfinn_design_wrapper* t){t->ap_clk=0;t->eval();t->ap_clk=1;t->eval();}
static int32_t sx24(uint32_t v){v&=0xFFFFFF;return (v&0x800000)?(int32_t)(v|0xFF000000):(int32_t)v;}
int main(int argc,char**argv){
  Verilated::commandArgs(argc,argv);
  std::vector<uint8_t> img(576,0);
  if(argc>1){FILE*f=fopen(argv[1],"rb"); if(!f||fread(img.data(),1,576,f)!=576){fprintf(stderr,"bad input\n");return 2;} fclose(f);}
  auto*t=new Vfinn_design_wrapper; t->ap_rst_n=0;t->s_axis_0_tvalid=0;t->m_axis_0_tready=1;
  for(int i=0;i<20;i++)tick(t); t->ap_rst_n=1; for(int i=0;i<20;i++)tick(t);
  for(int frame=0;frame<2;frame++){
    int sent=0,cyc=0,outn=0; uint32_t out[2]={0,0};
    while(outn<2 && cyc<500000){
      if(sent<576){t->s_axis_0_tdata=img[sent];t->s_axis_0_tvalid=1;} else t->s_axis_0_tvalid=0;
      bool in_hs=t->s_axis_0_tvalid&&t->s_axis_0_tready;
      bool out_hs=t->m_axis_0_tvalid&&t->m_axis_0_tready;
      if(out_hs) out[outn++]=t->m_axis_0_tdata;
      tick(t); cyc++; if(in_hs) sent++;
    }
    float vn=sx24(out[0])*0.00016658f+0.02115575f, wn=sx24(out[1])*0.00016658f+0.02115575f;
    printf("frame %d: bytes=%d salidas=%d ciclos=%d raw=(%d,%d) v=%.4f w=%.4f\n",frame,sent,outn,cyc,sx24(out[0]),sx24(out[1]),-0.6f+vn*13.6f,-3.14159265f+wn*6.2831853f);
  }
  t->final(); delete t; return 0;}
