module LabL6;
wire [31:0] z;
wire cout;
reg [31:0] a, b;
reg cin;
reg [31:0] expect;
//reg ok;

yAdder mine(z, cout, a, b, cin);
initial
begin
cin = 0;
a = $random;
b = $random;
expect = a+b+cin;
//ok = 0;
if(expect === z)
#1 $display("a=%b b=%b cin=%b cout=%b z=%b expect=%b", a, b, cin, cout, z, expect);
end
endmodule
