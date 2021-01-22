module AND_4bit(x, y, z);
input [3:0]x;
input [3:0]y;
output [3:0]z;

assign z = x&y;
endmodule

module stimcrct;

     reg [3:0] X; 
     reg [3:0] Y;
     wire [3:0] a;
     AND_4bit and_gate(X,Y,a);

     initial
     begin
     X = 4'b0000; Y = 4'b0000; #50;
     X = 4'b0001; Y = 4'b0000; #50;
     X = 4'b0000; Y = 4'b0001; #50;
     X = 4'b0001; Y = 4'b0001; #50;
     end


endmodule
