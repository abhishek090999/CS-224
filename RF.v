`timescale 1ns / 1ns
module RF(clk, reset, rd_sel, wr_sel, wr_en, data_in, data_out);
    input clk;
    input reset;
    input [2:0] rd_sel;
    input [2:0] wr_sel;
    input wr_en;
    input [7:0] data_in;
    output reg [7:0] data_out;
    reg [7:0] r [7:0];
    integer i;

    always @(posedge clk)
    begin
	 if(wr_en)
		r[wr_sel] <= data_in;
        
	 end

    always @(*)
    begin
	 if(reset)
		begin
		  for(i = 0; i < 8; i = i + 1)
			begin
            r[i] <= 8'b0;
			end
		end 
    data_out <= r[rd_sel];
    end


endmodule