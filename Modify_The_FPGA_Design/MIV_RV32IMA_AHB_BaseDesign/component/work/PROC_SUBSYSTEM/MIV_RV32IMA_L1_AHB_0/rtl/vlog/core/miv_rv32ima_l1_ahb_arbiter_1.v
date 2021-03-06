// Copyright (c) 2017, Microsemi Corporation
// All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are met:
//     * Redistributions of source code must retain the above copyright
//       notice, this list of conditions and the following disclaimer.
//     * Redistributions in binary form must reproduce the above copyright
//       notice, this list of conditions and the following disclaimer in the
//       documentation and/or other materials provided with the distribution.
//     * Neither the name of the <organization> nor the
//       names of its contributors may be used to endorse or promote products
//       derived from this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
// ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
// WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
// DISCLAIMED. IN NO EVENT SHALL MICROSEMI CORPORATIONM BE LIABLE FOR ANY
// DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
// (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
// LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
// ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
// SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//
// APACHE LICENSE
// Copyright (c) 2017, Microsemi Corporation 
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
// Description:
//
// SVN Revision Information:
// SVN $Revision: $
// SVN $Date: $
//
// Resolved SARs
// SAR      Date     Who   Description
//
// Notes:
//
// ****************************************************************************/
`define RANDOMIZE
`timescale 1ns/10ps
module PROC_SUBSYSTEM_MIV_RV32IMA_L1_AHB_0_MIV_RV32IMA_L1_AHB_ARBITER_1(
  input         io_in_0_valid,
  input  [12:0] io_in_0_bits_addr,
  input         io_in_0_bits_write,
  input  [31:0] io_in_0_bits_wdata,
  input  [3:0]  io_in_0_bits_eccMask,
  output        io_in_1_ready,
  input         io_in_1_valid,
  input  [12:0] io_in_1_bits_addr,
  input         io_in_1_bits_write,
  input  [31:0] io_in_1_bits_wdata,
  input  [3:0]  io_in_1_bits_eccMask,
  output        io_in_2_ready,
  input         io_in_2_valid,
  input  [12:0] io_in_2_bits_addr,
  input         io_in_2_bits_write,
  input  [31:0] io_in_2_bits_wdata,
  input  [3:0]  io_in_2_bits_eccMask,
  output        io_in_3_ready,
  input         io_in_3_valid,
  input  [12:0] io_in_3_bits_addr,
  input         io_in_3_bits_write,
  input  [31:0] io_in_3_bits_wdata,
  input  [3:0]  io_in_3_bits_eccMask,
  input         io_out_ready,
  output        io_out_valid,
  output [12:0] io_out_bits_addr,
  output        io_out_bits_write,
  output [31:0] io_out_bits_wdata,
  output [3:0]  io_out_bits_eccMask
);
  wire [12:0] _GEN_1;
  wire  _GEN_2;
  wire [31:0] _GEN_3;
  wire [3:0] _GEN_5;
  wire [12:0] _GEN_8;
  wire  _GEN_9;
  wire [31:0] _GEN_10;
  wire [3:0] _GEN_12;
  wire [12:0] _GEN_15;
  wire  _GEN_16;
  wire [31:0] _GEN_17;
  wire [3:0] _GEN_19;
  wire  _T_68;
  wire  _T_69;
  wire  _T_71;
  wire  _T_73;
  wire  _T_75;
  wire  _T_77;
  wire  _T_78;
  wire  _T_79;
  wire  _T_81;
  wire  _T_82;
  assign io_in_1_ready = _T_77;
  assign io_in_2_ready = _T_78;
  assign io_in_3_ready = _T_79;
  assign io_out_valid = _T_82;
  assign io_out_bits_addr = _GEN_15;
  assign io_out_bits_write = _GEN_16;
  assign io_out_bits_wdata = _GEN_17;
  assign io_out_bits_eccMask = _GEN_19;
  assign _GEN_1 = io_in_2_valid ? io_in_2_bits_addr : io_in_3_bits_addr;
  assign _GEN_2 = io_in_2_valid ? io_in_2_bits_write : io_in_3_bits_write;
  assign _GEN_3 = io_in_2_valid ? io_in_2_bits_wdata : io_in_3_bits_wdata;
  assign _GEN_5 = io_in_2_valid ? io_in_2_bits_eccMask : io_in_3_bits_eccMask;
  assign _GEN_8 = io_in_1_valid ? io_in_1_bits_addr : _GEN_1;
  assign _GEN_9 = io_in_1_valid ? io_in_1_bits_write : _GEN_2;
  assign _GEN_10 = io_in_1_valid ? io_in_1_bits_wdata : _GEN_3;
  assign _GEN_12 = io_in_1_valid ? io_in_1_bits_eccMask : _GEN_5;
  assign _GEN_15 = io_in_0_valid ? io_in_0_bits_addr : _GEN_8;
  assign _GEN_16 = io_in_0_valid ? io_in_0_bits_write : _GEN_9;
  assign _GEN_17 = io_in_0_valid ? io_in_0_bits_wdata : _GEN_10;
  assign _GEN_19 = io_in_0_valid ? io_in_0_bits_eccMask : _GEN_12;
  assign _T_68 = io_in_0_valid | io_in_1_valid;
  assign _T_69 = _T_68 | io_in_2_valid;
  assign _T_71 = io_in_0_valid == 1'h0;
  assign _T_73 = _T_68 == 1'h0;
  assign _T_75 = _T_69 == 1'h0;
  assign _T_77 = _T_71 & io_out_ready;
  assign _T_78 = _T_73 & io_out_ready;
  assign _T_79 = _T_75 & io_out_ready;
  assign _T_81 = _T_75 == 1'h0;
  assign _T_82 = _T_81 | io_in_3_valid;
endmodule
