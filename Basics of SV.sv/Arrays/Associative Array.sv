module associative_array_tb;
  int assos_array[int];
  int index;
  initial
    
    
    begin

      assos_array[10]=50;
      assos_array[3]=100;
      assos_array[5]=10;
      assos_array.first(index);//.last  .prev   .next
      
      $display("first value=%p",index);
      
//       if(assos_array.exists(3))
//         $display("value exists");
//       else
//         $display("not existed");
    end
endmodule


first value=3


module tb;
  
  int arr[string];
  initial begin
    arr["first"]=1;
    arr["first"]=2;
 
    $display("arr[first]=%0d",arr.num());
  
  end
endmodule
  
arr[first]=1
