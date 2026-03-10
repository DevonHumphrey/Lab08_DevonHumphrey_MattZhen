module ternary_4_mux(
    input [1:0] Sel,
    input [3:0] A, [3:0] B, [3:0] C, [3:0] D,
    input Enable,
    output [3:0] Y
);

    assign Y = Enable ? (Sel == 2'b00 ? A : 
                	 Sel == 2'b01 ? B : 
                	 Sel == 2'b10 ? C : D) :0; 
             

endmodule