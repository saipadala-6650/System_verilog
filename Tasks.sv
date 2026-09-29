// Code your testbench here
// or browse Examples
module task_example();
 // int a ,b;
  
  task  compare(input int a ,b,output bit[1:0]done);
     
    if(a>b) begin
      done= 2'h1;
      return;
    $display("comparison completed");
    end
    
    if(a<b) begin
      done= 2'h2;
      return;
     $display("comparison completed");
    end
    
    if(a==b) begin
      done=2'h3;
      return;
     $display("comparison completed");
    end
    #10;
    done=1;
   endtask
  
  initial
    begin
   bit [1:0]done;
 int a,b;
      
      repeat(5) begin
        
        a=$urandom_range(0,5);
        b=$urandom_range(0,5);
        compare(a,b,done);
        if(done==2'h1) begin
         #10; $display("a=%0d is greater than b=%0d",a,b);
          
        end
        if(done==2'h2) begin
         #10; $display("a=%0d is less than b=%0d",a,b);
         
        end
        if(done==2'h3)
          begin
         #10;   $display("a=%0d is equal to b=%0d",a,b);
           
          end
      end
        
      end
endmodule


# KERNEL: a=0 is less than b=3
# KERNEL: a=2 is less than b=5
# KERNEL: a=1 is less than b=3
# KERNEL: a=0 is less than b=2
# KERNEL: a=1 is greater than b=0

                                     *** pass by ref***



module task_pass_by_ref();
  
  task automatic pass_by_ref( ref int a);
    a=50;
    $display("value of a is %d",a);
  endtask;
  initial begin
    int x=100;
    pass_by_ref(x);
    $display("value of x is %d",x);
  end
endmodule


 value of a is          50
# KERNEL: value of x is 50
