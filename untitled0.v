module stimcrct;
    reg [3:0] D;
    initial
           begin
                D = 4'b0000;
            
                repeat(16)
                           #10 D = D + 1'b1;
            end
endmodule

