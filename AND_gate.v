module AND(x, y, z);
input x;
input y;
output z;

assign z = x&y;
endmodule

module stimcrct;

     reg X, Y;
     wire a;
     AND and_gate(X,Y,a);

     initial
     begin
     X = 0; Y = 0; #50;
     X = 1; Y = 0; #50;
     X = 0; Y = 1; #50;
     X = 1; Y = 1; #50;
     end


endmodule
