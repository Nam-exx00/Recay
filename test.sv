module test;
    reg [5:0] left;
    reg [5:0] right;
    reg opcode;
    wire [5:0] result;

    calc p(.left(left), .right(right), .result(result), .opcode(opcode));

    initial begin
        $monitor("left=%d, right=%d, opcode=%d, result=%d", left, right, opcode, result);
        left <= 5;
        right <= 3;
        opcode <= 1;
        #100 $finish;
    end
endmodule