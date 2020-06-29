`include "LWC_constants.vh"
//D FF
module d_ff(clk, rst, en, d, q);
parameter WIDTH = 32;


input clk, rst, en;
input [WIDTH-1:0] d;
output [WIDTH-1:0] q;

wire clk, rst, en;
wire [WIDTH-1:0] d;
reg [WIDTH-1:0] q;

generate
	if (ASYNC_RSTN == 0) begin
		always @(posedge clk)
		begin
			if (rst == 1'b1) begin
				q <= 0;
			end else if (en == 1'b1) begin
				q <= d;
			end
		
		end
    end
	else begin
		always @(posedge clk, negedge rst)
		begin
			if (rst == 1'b0) begin
				q <= 0;
			end else if (en == 1'b1) begin
				q <= d;
			end
		end
    end
endgenerate


endmodule


