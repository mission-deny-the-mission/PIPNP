`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2022 13:48:38
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////




module top(
        input wire GCLK,
        output wire VGA_R1,
        output wire VGA_R2,
        output wire VGA_R3,
        output wire VGA_R4,
        output wire VGA_G1,
        output wire VGA_G2,
        output wire VGA_G3,
        output wire VGA_G4,
        output wire VGA_B1,
        output wire VGA_B2,
        output wire VGA_B3,
        output wire VGA_B4,
        output wire VGA_HS,
        output wire VGA_VS
    );
    wire gb_clk_raw, vga_clk;
    reg [0:0] gb_clk = 0;
    wire clk_reset, clk_locked;
    wire gb_reset;
    wire gb_hs, gb_vs, gb_pclk, gb_pdat, gb_valid, gb_en;
    
    //reg gb_clk_en;
    
    always @(posedge gb_clk_raw)
    begin
        gb_clk <= ~gb_clk;
    end
    
    clk_wiz_0(
        .clk_out1(gb_clk_raw),
        .clk_out2(vga_clk),
        .reset(clk_reset),
        .locked(clk_locked),
        .clk_in1(GCLK)
    );
    
    wire [7:0] vga_mixer_red;
    wire [7:0] vga_mixer_green;
    wire [7:0] vga_mixer_blue;
    
    assign VGA_R1 = vga_mixer_red[0];
    assign VGA_R2 = vga_mixer_red[1];
    assign VGA_R3 = vga_mixer_red[2];
    assign VGA_R4 = vga_mixer_red[3];
    
    assign VGA_G1 = vga_mixer_green[0];
    assign VGA_G2 = vga_mixer_green[1];
    assign VGA_G3 = vga_mixer_green[2];
    assign VGA_G4 = vga_mixer_green[3];
    
    assign VGA_B1 = vga_mixer_blue[0];
    assign VGA_B2 = vga_mixer_blue[1];
    assign VGA_B3 = vga_mixer_blue[2];
    assign VGA_B4 = vga_mixer_blue[3];

    vga_mixer(
        .clk(vga_clk),
        .gb_hs(gb_hs),
        .gb_vs(gb_vs),
        .gb_pclk(gb_pclk),
        .gb_pdat(gb_pdat),
        .gb_en(gb_en),
        .vga_r(vga_mixer_red),
        .vga_g(vga_mixer_green),
        .vga_b(vga_mixer_blue),
        .vga_hs(VGA_HS),
        .vga_vs(VGA_VS)
    );
    
    boy(
        .rst(gb_reset),
        .clk(gb_clk),
        .hs(gb_hs),
        .vs(gb_vs),
        .cpl(gb_pclk),
        .pixel(gb_pdat),
        .valid(gb_valid)
    );
endmodule
