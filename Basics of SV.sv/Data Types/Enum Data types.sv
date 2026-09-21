

typedef enum bit [1:0]{yellow ,blue, red,green} colours; // if yellow =3 then blue = 3+1=4 and red=5 and increment by 1...the 
                                                          // The range of index values are 2^32 only ..so we can limit the range by using bit[msb:lsb]

module tb;
  initial begin
  colours color;
  color=yellow;
  
    $display("colour=",color.num());
    $display("colour=",color.name());
    $display("colour=%d",color);
    $display("colour=",color.prev());
    $display("colour=",color.first());
    $display("colour=",color.last());
    $display("colour=",color.next());
    
    
  end
endmodule


# KERNEL: colour=4
# KERNEL: colour=yellow
# KERNEL: colour=0
# KERNEL: colour=3
# KERNEL: colour=0
# KERNEL: colour=3
# KERNEL: colour=1
