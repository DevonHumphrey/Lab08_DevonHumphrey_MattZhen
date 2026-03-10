module Demux(
    input [3:0] In,
    input [1:0] Sel,
    input Enable,
    output [3:0] Lib, [3:0] Fire_Dept, [3:0] School, [3:0] Ribs
);

    assign Lib = Enable ? (Sel == 2'b00 ? In : 0) :0; 
    assign Fire_Dept = Enable ? (Sel == 2'b01 ? In : 0) :0; 
    assign School = Enable ? (Sel == 2'b10 ? In : 0) :0;
    assign Ribs = Enable ? (Sel == 2'b11 ? In : 0) :0;

endmodule