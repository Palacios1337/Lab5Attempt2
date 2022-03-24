module bigRamTB;

reg Clk;
reg en;
reg [7:0] Address;
reg [31:0] Din;
wire [31:0] Dout;
reg WR;

bigRam Test(.Address(Address),.Din(Din),.Dout(Dout),.Clk(Clk),.en(en),.WR(WR));


always begin

#10 Clk  <= ~Clk;
end

initial begin
	Clk = 1'b0;
	en = 1'b1;
	Address <= 8'b00101001;
	Din <= 32'b01110010100111111011001010110010;
	WR <= 1'b1;
	#100;
	Address <= 8'b01101111;
	Din <= 32'b01100101000001000100010011110001;
	#100;
	Address <= 8'b10101010;
	Din <= 32'b00001010001110100010011101011010;
	#100;
	Address <= 8'b11111111;
	Din <= 32'b01000111111111110000100000101011;
	#100;
	WR <= 0;
	#100;
	Address <= 8'b00101001;
	#100;
	en <= 1'b0;
	#100;
	
$finish;


end



endmodule
