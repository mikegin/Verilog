module labK;
reg [31:0] x; // a 32-bit register
reg [31:0] one;
reg [31:0] two;
reg [31:0] three;
initial
begin
	
	x = 32'hffff0000;
	one = &x;
	two = x[1:0];
	three = {one, two};
	x
	= x + 2;
	$display("time = %5d, x =%b", $time, x);
	$display("time = %5d, one=%b, two=%b, three=%b", $time, one, two, three);
	$finish;
end
endmodule 
