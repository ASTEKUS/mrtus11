module decoder (
					input             clk,
					input       [9:0] sw,
					output    	[3:0] rez
				);
reg [3:0] decoder_output;
parameter fal = 4'b1001;


always @(posedge clk)
begin
	if (sw[9] == 0 && sw[8]==0)
	case (sw[3:0])
	4'b0000: decoder_output <=0;
	4'b0001: decoder_output <=1;
	4'b0010: decoder_output <=2;
	4'b0011: decoder_output <=3;
	4'b0100: decoder_output <=4;
	4'b0101: decoder_output <=5;
	4'b0110: decoder_output <=6;
	4'b0111: decoder_output <=7;
	
	4'b1000: decoder_output <=8;
	4'b1001: decoder_output <=9;
	4'b1010: decoder_output <=10;
	4'b1011: decoder_output <=11;
	4'b1100: decoder_output <=12;
	4'b1101: decoder_output <=13;
	4'b1110: decoder_output <=14;
	4'b1111: decoder_output <=15;
	
	endcase 
	
	if (sw[9] == 0 && sw[8] == 1)
	case (sw[7:4])
	4'b0000: decoder_output <=0;
	4'b0001: decoder_output <=1;
	4'b0010: decoder_output <=2;
	4'b0011: decoder_output <=3;
	4'b0100: decoder_output <=5;
	4'b0101: decoder_output <=7;
	4'b0110: decoder_output <=7;
	4'b0111: decoder_output <=7;
	endcase 
	
	
	if (sw[9] == 1 && sw[8] == 0)
		decoder_output <= fal; 
	
	if (sw[9] == 1 && sw[8] == 1)
		decoder_output <= sw[3:0];
	
	
	
	
	
	
	
	
	
	

end
assign rez = decoder_output;			

endmodule 