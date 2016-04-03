module LabL3;
reg [31:0]a, b;
reg c, flag;
wire [31:0]z;

yMux #(32) mux(z, a, b, c);
initial
repeat (10)
begin
a = $random;
b = $random;
c = $random % 2;
#1;
if(c===0)
if(z===a)
 $display("Pass: a=%b b=%b c=%b z=%b", a, b, c, z);
end

endmodule
