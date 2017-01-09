module top_unit ( 	input              clk,
					input        [9:0] sw,
					output	  	 [6:0] hex_n
				);
				
wire [3:0] rezult;
decoder dec (	.clk(clk),
				.sw(sw),
				.rez(rezult)
			);
			
Codetohex (	.clk(clk),
			.rez(rezult),
			.hex_n(hex_n)
			);
				

// Why rezult & hex_n can't be reg? fgjsdfjgp
endmodule

