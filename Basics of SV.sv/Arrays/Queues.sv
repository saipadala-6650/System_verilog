module tb;

    int q[$];

    initial begin
      
      q='{1,2};
      foreach(q[i])
        
      

        $display("%p", q);

    end

endmodule


 '{1, 2}
# KERNEL: '{1, 2}
