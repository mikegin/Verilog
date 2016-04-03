module LabL1;
reg a, b, c, flag;
wire z;

yMux1 mux1(z, a, b, c);
initial
begin
flag = $value$plusargs("a=%b", a);
flag = $value$plusargs("b=%b", b);
flag = $value$plusargs("c=%b", c);
#1 $display("a=%b b=%b c=%b z=%b", a, b, c, z);

end
endmodule
