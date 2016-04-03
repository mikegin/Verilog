module Lab5;
reg a, b, cin;
wire cout, z;
integer expect;

yAdder1 add(z, cout, a, b, cin);
initial
begin
a = 0;
b = 0;
cin = 1;
expect = a+b+cin;
if(expect[0]!=cout||expect[1]!=z)
 #1 $display("a=%b b=%b cin=%b z=%b cout=%b expect=%b expect[1]=%b expect[0]=%b", a, b, cin, z, cout, expect, expect[0], expect[1]);
end
endmodule
