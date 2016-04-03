module labK;
reg a, b, c, flag, expect;
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
	#1 expect = aAndNotC|cAndB;
	if(expect===z)
	#2 $display("Pass: a=%b b=%b c=%b z=%b", a, b, c, z);
	else
	#2 $display("Fail: a=%b b=%b c=%b z=%b", a, b, c, z);
	$finish;
end
endmodule
