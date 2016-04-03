module labK;
reg a, b, c;
wire z, aAndNotC, cAndB, notC;

not my_not(notC, c);
and my_aAndNotC(aAndNotC, a, notC);

and my_cAndB(cAndB, c, b);
or my_or(z, aAndNotC, cAndB);

initial
begin
	a = 1;
	b = 0;
	c = 0;
	#1 $display("a=%b b=%b c=%b z=%b", a, b, c, z);
	$finish;
end
endmodule
