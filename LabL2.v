module LabL2;
reg [1:0]a, b;
reg c, flag;
wire [1:0]z;

yMux2 mux2(z, a, b, c);
initial
begin
flag = $value$plusargs("a=%b", a);
flag = $value$plusargs("b=%b", b);
flag = $value$plusargs("c=%b", c);
#1 $display("a=%b b=%b c=%b z=%b", a, b, c, z);

end

endmodule
