module tb;
  int arr[2][2];
  
  initial
    begin
      arr = '{ '{default:0},'{default:1}}; // if u want to increse the size of the column or row ...so we can use default key

      $display("The value of arr is %p",arr);
    end
endmodule
