module adder(A, B, C_IN, S, C_OUT);
input A;
input B;
input C_IN;
output C_OUT;
output S;

wire p,g,t;

assign p = A&C_IN;
assign g = B&C_IN;
assign t = A&B;
assign C_OUT = p|g|t;
assign S = A^B^C_IN;

endmodule

module tmp(A, B, S, C_IN, C_OUT);
input [3:0]A;
input [3:0]B;
output [4:0]S;
input C_IN;
input [2:0]C_OUT;

adder ADD1(A[0], B[0], C_IN, S[0], C_OUT[0]);
adder ADD2(A[1], B[1], C_OUT[0], S[1], C_OUT[1]);
adder ADD3(A[2], B[2], C_OUT[1], S[2], C_OUT[2]);
adder ADD4(A[3], B[3], C_OUT[2], S[3], S[4]);

endmodule

module stimcrct;
     reg [3:0] X; 
     reg [3:0] Y;

     wire [4:0]s;
     wire C_IN = 1'b0;
     wire [2:0]C_OUT;

     tmp add(X,Y,s,C_IN,C_OUT);

     initial
     begin

          X = 4'b0000; 
     Y = 4'b0000;
     repeat(8) begin
      Y = Y + 1'b1; #10;
     end

     X = X + 1'b1;
     Y = 4'b0000;
     repeat(8) begin
      Y = Y + 1'b1; #10;
     end

     X = X + 1'b1;
     Y = 4'b0000;
     repeat(8) begin
      Y = Y + 1'b1; #10;
     end

     X = X + 1'b1;
     Y = 4'b0000;
     repeat(8) begin
      Y = Y + 1'b1; #10;
     end

     X = X + 1'b1;
     Y = 4'b0000;
     repeat(8) begin
      Y = Y + 1'b1; #10;
     end

     X = X + 1'b1;
     Y = 4'b0000;
     repeat(8) begin
      Y = Y + 1'b1; #10;
     end

     X = X + 1'b1;
     Y = 4'b0000;
     repeat(8) begin
      Y = Y + 1'b1; #10;
     end

     X = X + 1'b1;
     Y = 4'b0000;
     repeat(8) begin
      Y = Y + 1'b1; #10;
     end

     X = X + 1'b1;
     Y = 4'b0000;
     repeat(8) begin
      Y = Y + 1'b1; #10;
     end

     end
endmodule
