module LabL4;
reg [31:0]a0, a1, a2, a3;
reg [1:0]c, flag;
wire [31:0]z;

yMux4to1 #(32) mux(z, a0, a1, a2, a3, c);
initial
repeat (10)
begin
a0 = $random;
a1 = $random;
a2 = $random;
a3 = $random;
c = $random % 2;
#1;
if(c===0)
if(z===a0)
 $display("Pass: a0=%b a1=%b a2=%b a3=%b c=%b z=%b", a0, a1, a2, a3, c, z);
end

endmodule
