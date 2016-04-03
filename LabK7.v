module labK;
reg a, b, c, flag;
wire z, aAndNotC, cAndB, notC;

not my_not(notC, c);
and my_aAndNotC(aAndNotC, a, notC);

and my_cAndB(cAndB, c, b);
or my_or(z, aAndNotC, cAndB);

initial
begin
	flag = $value$plusargs("a=%b", a);
	flag = $value$plusargs("b=%b", b);
	flag = $value$plusargs("c=%b", c);
	#1 $display("a=%b b=%b c=%b z=%b", a, b, c, z);
	$finish;
end
endmodule
