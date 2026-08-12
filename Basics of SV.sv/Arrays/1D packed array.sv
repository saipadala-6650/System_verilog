module tb;

    int arr[8];

    initial begin
         arr[0]=1'b0;
         arr[1]=1'b1;
         arr[2]=1'b1;//index method and also use for loop

      // arr = '{1,1,0,0,1,0,0,1}; // Aggregate method

      foreach (arr[i])  // foreach used for directly initialize and iterate
            $display("arr[%0d]=%0d", i, arr[i]);

   end

endmodule
