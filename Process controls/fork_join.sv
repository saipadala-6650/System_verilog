module fork_join_ex();
  
  initial
    begin
     #10; 
      $display("time=%0t,parent class starts",$time);
      fork
        begin
          #50;
          $display("At t=%0t process 1 completed",$time);
        end
        begin
          #3;
          $display("At t=%0t process 2 completed",$time);
        end 
        
      join
      #1;
      $display("parent continues");
    end
endmodule

 time=10,parent class starts
# KERNEL: At t=13 process 2 completed
# KERNEL: At t=60 process 1 completed
# KERNEL: parent continues
