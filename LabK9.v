module labK;
reg a, b, cIn, flag;
wire aXb, aAndB, cInAndaXb, z, cOut;

xor my_xor(aXb, a, b);
and my_and(aAndB, a, b);
and my_and2(cInAndaXb, cIn, aXb);
xor my_xor2(z, cIn, aXb);
or my_or(cOut, cInAndaXb, aAndB);

initial
begin
	flag = $value$plusargs("a=%b", a);
	flag = $value$plusargs("b=%b", b);
	flag = $value$plusargs("c=%b", cIn);	
	#1 $display("a=%b b=%b cIn=%b z=%b cOut=%b", a, b, cIn, z, cOut);

end
endmodule
