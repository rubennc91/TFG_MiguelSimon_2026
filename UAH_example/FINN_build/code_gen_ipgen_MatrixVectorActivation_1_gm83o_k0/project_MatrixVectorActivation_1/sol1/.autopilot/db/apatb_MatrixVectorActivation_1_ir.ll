; ModuleID = '/home/miguel_tfg/FINN-v0.9-Stable/notebooks/UAH_example/FINN_build/code_gen_ipgen_MatrixVectorActivation_1_gm83o_k0/project_MatrixVectorActivation_1/sol1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<ap_uint<32>, 0>" = type { %"struct.ap_uint<32>" }
%"struct.ap_uint<32>" = type { %"struct.ap_int_base<32, false>" }
%"struct.ap_int_base<32, false>" = type { %"struct.ssdm_int<32, false>" }
%"struct.ssdm_int<32, false>" = type { i32 }
%"class.hls::stream<ap_uint<512>, 0>" = type { %"struct.ap_uint<512>" }
%"struct.ap_uint<512>" = type { %"struct.ap_int_base<512, false>" }
%"struct.ap_int_base<512, false>" = type { %"struct.ssdm_int<512, false>" }
%"struct.ssdm_int<512, false>" = type { i512 }
%"class.hls::stream<ap_uint<64>, 0>" = type { %"struct.ap_uint<64>" }
%"struct.ap_uint<64>" = type { %"struct.ap_int_base<64, false>" }
%"struct.ap_int_base<64, false>" = type { %"struct.ssdm_int<64, false>" }
%"struct.ssdm_int<64, false>" = type { i64 }

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_MatrixVectorActivation_1_ir(%"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture nonnull dereferenceable(4) %in0, %"class.hls::stream<ap_uint<512>, 0>"* noalias nocapture nonnull dereferenceable(64) %weights, %"class.hls::stream<ap_uint<64>, 0>"* noalias nocapture nonnull dereferenceable(8) %out) local_unnamed_addr #1 {
entry:
  %in0_copy = alloca %"class.hls::stream<ap_uint<32>, 0>", align 512
  call void @llvm.sideeffect() #7 [ "stream_interface"(%"class.hls::stream<ap_uint<32>, 0>"* %in0_copy, i32 0) ]
  %weights_copy = alloca %"class.hls::stream<ap_uint<512>, 0>", align 512
  call void @llvm.sideeffect() #8 [ "stream_interface"(%"class.hls::stream<ap_uint<512>, 0>"* %weights_copy, i32 0) ]
  %out_copy = alloca %"class.hls::stream<ap_uint<64>, 0>", align 512
  call void @llvm.sideeffect() #9 [ "stream_interface"(%"class.hls::stream<ap_uint<64>, 0>"* %out_copy, i32 0) ]
  call fastcc void @copy_in(%"class.hls::stream<ap_uint<32>, 0>"* nonnull %in0, %"class.hls::stream<ap_uint<32>, 0>"* nonnull align 512 %in0_copy, %"class.hls::stream<ap_uint<512>, 0>"* nonnull %weights, %"class.hls::stream<ap_uint<512>, 0>"* nonnull align 512 %weights_copy, %"class.hls::stream<ap_uint<64>, 0>"* nonnull %out, %"class.hls::stream<ap_uint<64>, 0>"* nonnull align 512 %out_copy)
  call void @apatb_MatrixVectorActivation_1_hw(%"class.hls::stream<ap_uint<32>, 0>"* %in0_copy, %"class.hls::stream<ap_uint<512>, 0>"* %weights_copy, %"class.hls::stream<ap_uint<64>, 0>"* %out_copy)
  call void @copy_back(%"class.hls::stream<ap_uint<32>, 0>"* %in0, %"class.hls::stream<ap_uint<32>, 0>"* %in0_copy, %"class.hls::stream<ap_uint<512>, 0>"* %weights, %"class.hls::stream<ap_uint<512>, 0>"* %weights_copy, %"class.hls::stream<ap_uint<64>, 0>"* %out, %"class.hls::stream<ap_uint<64>, 0>"* %out_copy)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in(%"class.hls::stream<ap_uint<32>, 0>"* noalias, %"class.hls::stream<ap_uint<32>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<512>, 0>"* noalias, %"class.hls::stream<ap_uint<512>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<64>, 0>"* noalias, %"class.hls::stream<ap_uint<64>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(%"class.hls::stream<ap_uint<32>, 0>"* align 512 %1, %"class.hls::stream<ap_uint<32>, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<512>, 0>"(%"class.hls::stream<ap_uint<512>, 0>"* align 512 %3, %"class.hls::stream<ap_uint<512>, 0>"* %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<64>, 0>"(%"class.hls::stream<ap_uint<64>, 0>"* align 512 %5, %"class.hls::stream<ap_uint<64>, 0>"* %4)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(%"class.hls::stream<ap_uint<32>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<32>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq %"class.hls::stream<ap_uint<32>, 0>"* %0, null
  %3 = icmp eq %"class.hls::stream<ap_uint<32>, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(%"class.hls::stream<ap_uint<32>, 0>"* nonnull align 512 %0, %"class.hls::stream<ap_uint<32>, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(%"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<ap_uint<32>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<ap_uint<32>, 0>"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_4(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<ap_uint<32>, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<ap_uint<32>, 0>"* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<ap_uint<32>, 0>", %"class.hls::stream<ap_uint<32>, 0>"* %2
  %8 = bitcast %"class.hls::stream<ap_uint<32>, 0>"* %2 to i8*
  %9 = bitcast %"class.hls::stream<ap_uint<32>, 0>"* %0 to i8*
  call void @fpga_fifo_push_4(i8* %8, i8* %9)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<512>, 0>"(%"class.hls::stream<ap_uint<512>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<512>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq %"class.hls::stream<ap_uint<512>, 0>"* %0, null
  %3 = icmp eq %"class.hls::stream<ap_uint<512>, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<512>, 0>"(%"class.hls::stream<ap_uint<512>, 0>"* nonnull align 512 %0, %"class.hls::stream<ap_uint<512>, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<512>, 0>"(%"class.hls::stream<ap_uint<512>, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<512>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<ap_uint<512>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<ap_uint<512>, 0>"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_64(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<ap_uint<512>, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<ap_uint<512>, 0>"* %1 to i8*
  call void @fpga_fifo_pop_64(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<ap_uint<512>, 0>", %"class.hls::stream<ap_uint<512>, 0>"* %2
  %8 = bitcast %"class.hls::stream<ap_uint<512>, 0>"* %2 to i8*
  %9 = bitcast %"class.hls::stream<ap_uint<512>, 0>"* %0 to i8*
  call void @fpga_fifo_push_64(i8* %8, i8* %9)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<64>, 0>"(%"class.hls::stream<ap_uint<64>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<64>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq %"class.hls::stream<ap_uint<64>, 0>"* %0, null
  %3 = icmp eq %"class.hls::stream<ap_uint<64>, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<64>, 0>"(%"class.hls::stream<ap_uint<64>, 0>"* nonnull align 512 %0, %"class.hls::stream<ap_uint<64>, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<64>, 0>"(%"class.hls::stream<ap_uint<64>, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<64>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<ap_uint<64>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<ap_uint<64>, 0>"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_8(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<ap_uint<64>, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<ap_uint<64>, 0>"* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<ap_uint<64>, 0>", %"class.hls::stream<ap_uint<64>, 0>"* %2
  %8 = bitcast %"class.hls::stream<ap_uint<64>, 0>"* %2 to i8*
  %9 = bitcast %"class.hls::stream<ap_uint<64>, 0>"* %0 to i8*
  call void @fpga_fifo_push_8(i8* %8, i8* %9)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out(%"class.hls::stream<ap_uint<32>, 0>"* noalias, %"class.hls::stream<ap_uint<32>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<512>, 0>"* noalias, %"class.hls::stream<ap_uint<512>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<64>, 0>"* noalias, %"class.hls::stream<ap_uint<64>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(%"class.hls::stream<ap_uint<32>, 0>"* %0, %"class.hls::stream<ap_uint<32>, 0>"* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<512>, 0>"(%"class.hls::stream<ap_uint<512>, 0>"* %2, %"class.hls::stream<ap_uint<512>, 0>"* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<64>, 0>"(%"class.hls::stream<ap_uint<64>, 0>"* %4, %"class.hls::stream<ap_uint<64>, 0>"* align 512 %5)
  ret void
}

declare void @apatb_MatrixVectorActivation_1_hw(%"class.hls::stream<ap_uint<32>, 0>"*, %"class.hls::stream<ap_uint<512>, 0>"*, %"class.hls::stream<ap_uint<64>, 0>"*)

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_back(%"class.hls::stream<ap_uint<32>, 0>"* noalias, %"class.hls::stream<ap_uint<32>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<512>, 0>"* noalias, %"class.hls::stream<ap_uint<512>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<64>, 0>"* noalias, %"class.hls::stream<ap_uint<64>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(%"class.hls::stream<ap_uint<32>, 0>"* %0, %"class.hls::stream<ap_uint<32>, 0>"* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<512>, 0>"(%"class.hls::stream<ap_uint<512>, 0>"* %2, %"class.hls::stream<ap_uint<512>, 0>"* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<64>, 0>"(%"class.hls::stream<ap_uint<64>, 0>"* %4, %"class.hls::stream<ap_uint<64>, 0>"* align 512 %5)
  ret void
}

define void @MatrixVectorActivation_1_hw_stub_wrapper(%"class.hls::stream<ap_uint<32>, 0>"*, %"class.hls::stream<ap_uint<512>, 0>"*, %"class.hls::stream<ap_uint<64>, 0>"*) #6 {
entry:
  call void @copy_out(%"class.hls::stream<ap_uint<32>, 0>"* null, %"class.hls::stream<ap_uint<32>, 0>"* %0, %"class.hls::stream<ap_uint<512>, 0>"* null, %"class.hls::stream<ap_uint<512>, 0>"* %1, %"class.hls::stream<ap_uint<64>, 0>"* null, %"class.hls::stream<ap_uint<64>, 0>"* %2)
  call void @MatrixVectorActivation_1_hw_stub(%"class.hls::stream<ap_uint<32>, 0>"* %0, %"class.hls::stream<ap_uint<512>, 0>"* %1, %"class.hls::stream<ap_uint<64>, 0>"* %2)
  call void @copy_in(%"class.hls::stream<ap_uint<32>, 0>"* null, %"class.hls::stream<ap_uint<32>, 0>"* %0, %"class.hls::stream<ap_uint<512>, 0>"* null, %"class.hls::stream<ap_uint<512>, 0>"* %1, %"class.hls::stream<ap_uint<64>, 0>"* null, %"class.hls::stream<ap_uint<64>, 0>"* %2)
  ret void
}

declare void @MatrixVectorActivation_1_hw_stub(%"class.hls::stream<ap_uint<32>, 0>"*, %"class.hls::stream<ap_uint<512>, 0>"*, %"class.hls::stream<ap_uint<64>, 0>"*)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare i1 @fpga_fifo_not_empty_64(i8*)

declare i1 @fpga_fifo_not_empty_8(i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_pop_64(i8*, i8*)

declare void @fpga_fifo_pop_8(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

declare void @fpga_fifo_push_64(i8*, i8*)

declare void @fpga_fifo_push_8(i8*, i8*)

attributes #0 = { inaccessiblememonly nounwind }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #5 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #6 = { "fpga.wrapper.func"="stub" }
attributes #7 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="32" "xlx.source"="user" }
attributes #8 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="512" "xlx.source"="user" }
attributes #9 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="64" "xlx.source"="user" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
