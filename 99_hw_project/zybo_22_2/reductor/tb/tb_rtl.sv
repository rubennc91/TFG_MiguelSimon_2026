// Prueba RTL (xsim) del reductor: manda las dos tramas volcadas por tb_reducer.cpp y compara los 2304 bytes de salida con los del modelo en C (bit a bit).
// La segunda trama se recibe con TREADY de salida intermitente (contrapresión). Entre tramas hay un hueco de 6000 ciclos.
`timescale 1ns/1ps
module tb_rtl;
  localparam W = 1280, H = 720, NB = 2304;
  reg clk = 0, rstn = 0; always #5 clk = ~clk;
  reg [23:0] tdata = 0; reg tvalid = 0, tuser = 0, tlast = 0; wire tready;
  wire [7:0] odata; wire ovalid; wire [0:0] ouser, olast; reg oready = 1;
  hls_image_reducer dut (.ap_clk(clk), .ap_rst_n(rstn),
    .stream_in_TDATA(tdata), .stream_in_TVALID(tvalid), .stream_in_TREADY(tready), .stream_in_TKEEP(3'b111), .stream_in_TSTRB(3'b111),
    .stream_in_TUSER(tuser), .stream_in_TLAST(tlast), .stream_in_TID(1'b0), .stream_in_TDEST(1'b0),
    .stream_out_TDATA(odata), .stream_out_TVALID(ovalid), .stream_out_TREADY(oready), .stream_out_TKEEP(), .stream_out_TSTRB(),
    .stream_out_TUSER(ouser), .stream_out_TLAST(olast), .stream_out_TID(), .stream_out_TDEST());
  byte unsigned img[W*H*3]; byte unsigned esp[NB]; byte unsigned got[NB];
  int n_out = 0, errores = 0, tramas_ok = 0; bit backpressure = 0;
  integer fd, r;
  always @(posedge clk) begin
    if (backpressure) oready <= ($urandom % 4 != 0); else oready <= 1;
    if (ovalid && oready && n_out < NB) begin
      got[n_out] <= odata;
      if (ouser[0] != (n_out == 0)) begin errores++; $display("TUSER mal en %0d", n_out); end
      if (olast[0] != (n_out == NB-1)) begin errores++; $display("TLAST mal en %0d", n_out); end
      n_out <= n_out + 1;
    end
  end
  task automatic enviar(input string f_in, input string f_out, input bit bp);
    int dif = 0;
    fd = $fopen(f_in, "rb"); r = $fread(img, fd); $fclose(fd);
    fd = $fopen(f_out, "rb"); r = $fread(esp, fd); $fclose(fd);
    n_out = 0; backpressure = bp;
    for (int y = 0; y < H; y++) for (int x = 0; x < W; x++) begin
      tvalid <= 1; tuser <= (x == 0 && y == 0); tlast <= (x == W-1);
      tdata <= {img[(y*W+x)*3+2], img[(y*W+x)*3+1], img[(y*W+x)*3]};      // {B,G,R}: ENTRADA_ROJO_EN_ALTO=0
      do @(posedge clk); while (!tready);                                   // la palabra se acepta en el flanco con TVALID y TREADY
    end
    @(posedge clk); tvalid <= 0;
    repeat (8000) @(posedge clk);
    if (n_out != NB) begin errores++; $display("%s: salieron %0d bytes (esperaba %0d)", f_in, n_out, NB); end
    else begin
      for (int i = 0; i < NB; i++) if (got[i] !== esp[i]) dif++;
      $display("%s: %0d bytes distintos de %0d (backpressure=%0d)", f_in, dif, NB, bp);
      if (dif == 0) tramas_ok++; else errores++;
    end
  endtask
  initial begin
    repeat (10) @(posedge clk); rstn <= 1; repeat (10) @(posedge clk);
    enviar("/tmp/reductor_entrada1.rgb", "/tmp/reductor_salida1.bin", 0);
    repeat (6000) @(posedge clk);
    enviar("/tmp/reductor_entrada2.rgb", "/tmp/reductor_salida2.bin", 1);
    $display(errores == 0 && tramas_ok == 2 ? "RTL: PASA (2 tramas idénticas al modelo en C)" : "RTL: FALLA (%0d errores)", errores);
    $finish;
  end
endmodule
