module test;
    reg reset;

    reg [5:0] left;
    reg [5:0] right;
    reg opcode;
    wire [5:0] result;

    calc p(.reset(reset), .left(left), .right(right), .result(result), .opcode(opcode));

    initial begin
        $monitor("reset=%d, left=%d, right=%d, opcode=%d, result=%d", reset, left, right, opcode, result);
        reset = 1;
        #10 reset = 0;
        left <= 4;
        right <= 4;
        opcode <= 7;
        #100 $finish;
    end
endmodule