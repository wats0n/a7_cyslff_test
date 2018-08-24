`timescale 1ns/1ps

module crc_8bx4(
  input [31:0] data_in,
  input crc_en,
  output [31:0] crc_out,
  input rst,
  input clk);
  
wire [31:0] din; //Re-Wire

assign din[7:0] = data_in[7:0];
assign din[31:8] = {data_in[11:8], data_in[31:12]};

crc_8b155 crc_8b155(
  .data_in(din[(8*0)+:8]),
  .crc_en(crc_en),
  .crc_out(crc_out[(8*0)+:8]),
  .rst(rst),
  .clk(clk));

crc_8b151 crc_8b151(
  .data_in(din[(8*1)+:8]),
  .crc_en(crc_en),
  .crc_out(crc_out[(8*1)+:8]),
  .rst(rst),
  .clk(clk));
  
crc_8b145 crc_8b145(
  .data_in(din[(8*2)+:8]),
  .crc_en(crc_en),
  .crc_out(crc_out[(8*2)+:8]),
  .rst(rst),
  .clk(clk));

crc_8b115 crc_8b115(
  .data_in(din[(8*3)+:8]),
  .crc_en(crc_en),
  .crc_out(crc_out[(8*3)+:8]),
  .rst(rst),
  .clk(clk));
  
endmodule