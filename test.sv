module test;
    reg [5:0] left;
    reg [5:0] right;
    wire [5:0] result;

    decider d(.left(left), .right(right), .result(result));

    initial begin
        $monitor("left=%d, right=%d, result=%d", left, right, result);
        left = 50;
        right = 50;
        #1 left = 25;
        #100 $finish;
    end
endmodule