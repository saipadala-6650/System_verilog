module tb;
  int dyn[];
  
  initial
    begin
      
      //dyn=new[size];
 dyn='{1,2,3,4,5};
      dyn=new[10](dyn);
   
     
      $display("%p",dyn);
    end
endmodule


'{1, 2, 3, 4, 5}



module tb;
  int dyn1[];
  int dyn2[];
  
  initial
    begin
    
      dyn1='{1,2,3};
      dyn2=dyn1;
      dyn1='{5,6,7};
     
      $display("%p",dyn1);
      $display("%p",dyn2);
    end
endmodule


# KERNEL: '{5, 6, 7}
# KERNEL: '{1, 2, 3}
