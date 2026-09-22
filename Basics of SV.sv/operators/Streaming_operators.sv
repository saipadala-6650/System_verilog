module sv_operators_tb;

logic [3:0]A;
logic [3:0]B;

logic [3:0]c,d;

initial

begin
  A=4'b1101;
  B=4'b0001;
  c={>>{A}};//storing 
  d={<<{B}};    // rotating
end
initial
begin
$monitor("A=%0b B=%0b c=%0b d=%0b",A,B,c,d);
end
endmodule


A=1101 B=0001 c=1101 d=1000




module tb;

  byte arr[4];
  logic [31:0] data;

  initial begin
    arr = '{8'h11, 8'h22, 8'h33, 8'h44};

    data = {>>{arr}};

    $display("%h", data);
  end

endmodule

# KERNEL: 11223344
