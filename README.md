# Census_Transform_MATLAB_HDL_Coder
This repository contains (.v) and (.m) files.

This repository is regarding the implementation of the Census Transform algorithm for depth map estimation in MATLAB and then converting it into Verilog files for FPGA implementation.

Some of the hard coded parameters are as follows:
Image size: 640*480
Search range: 80
Window size: 11

Serial_to_Parallel.m
This file takes one pixel as an input continually and outputs a row of pixels (640 pixels) and an enable signal to signal a complete row

Serial_to_Parallel_fixpt.v
This file is the verilog version of the file Serial_to_Parallel.m

Census_Transform_Row.m
This file takes a row of pixels from a left image and a right image and computes a row of disparity pixels using the Census Transform algorithm.

Census_Transform_Row_en_fixpt.v
This file is the verilog version of the file Census_Transform_Row.m

Parallel_to_Serial.m
This file takes one row of output pixels (640 pixels) as an input and continually outputs single pixels (640 pixels).

Parallel_to_Serial_fixpt.v
This file is the verilog version of the file Parallel_to_Serial.m

top.v
This file is a toplevel file combining the various instances of the three verilog files.
