module tb;
  int rst;

  function int add(input int x,int y);
   
    add=x+y;
    
  endfunction
  
  initial
    begin
       
      rst=add(15,20);
      $display("the value of rst=%0d",rst);
    end
endmodule


the value of rst=35



module tb;
  int rst;

  function int add(input int x,input int y,output int c);
   
   c=x+y;
    
  endfunction
  function void display();
    $display("HELLO WORLD");
    $display("calling before the return keyword");
    return;
    $diplay("calling after the return keyword"); // terminate after return 
  endfunction
  
  initial
    begin
       
      add(15,20,rst);
      display();
      $display("the value of rst=%0d",rst);
    end
endmodule


 HELLO WORLD
# KERNEL: calling before the return keyword
# KERNEL: the value of rst=35



module exmaple();
  
//   int a;
//   int b;
  
  function  void incr(); // static memory allocation for a and b (same mem)
  int a;
  int b;
    a++;
    b++;
   
    
    $display("The value of a is %0d",a);
    $display("the value of b is %0d",b);
    
  endfunction
  initial begin
    incr();
    incr();
    incr();
    
  end
endmodule

# KERNEL: The value of a is 1
# KERNEL: the value of b is 1
# KERNEL: The value of a is 2
# KERNEL: the value of b is 2
# KERNEL: The value of a is 3
# KERNEL: the value of b is 3


module exmaple();
  
//   int a;
//   int b;
  
  function automatic void incr();  // automatic keyword changes static nature to dynamic nature ...by default static only
  int a;
  int b;
    a++;
    b++;
   
    
    $display("The value of a is %0d",a);
    $display("the value of b is %0d",b);
    
  endfunction
  initial begin
    incr();
    incr();
    incr();
    
  end
endmodule


The value of a is 1
# KERNEL: the value of b is 1
# KERNEL: The value of a is 1
# KERNEL: the value of b is 1
# KERNEL: The value of a is 1
# KERNEL: the value of b is 1


           *** Pass by value***



module exmaple();
  int a;
  int b;
  int result;
  
  function int add( int m,int n);
    add=m+n;
  endfunction
  
  function automatic void incr(string s);
  
    a++;
    b++;
   
    
    $display("%s:The value of a is %0d",s,a);
    $display("%s:The value of b is %0d",s,b);
    
  endfunction
  initial begin
    incr("calling function for first time");
    incr("calling function for second time");
    result=add(a,b);//pass by name or pass by variables
    $display("add=%d",result);                                 // just copy a and b values in m and n ....
  end
endmodule


# KERNEL: calling function for first time:The value of a is 1
# KERNEL: calling function for first time:The value of b is 1
# KERNEL: calling function for second time:The value of a is 2
# KERNEL: calling function for second time:The value of b is 2
# KERNEL:          add= 4




       *** pass by name***

module tb;
  int a, b;
  int result;

  function int add(int m, int n);
    m = m + 1;
    $display("the value of m is %d", m);
    return m;
  endfunction

  initial begin
    a = 10;
    b = 20;

    result = add(.m(a), .n(b));

    $display("the value of a is %d", a);
    $display("the value of result is %d", result);
  end
endmodule

the value of m is 11
the value of a is 10
the value of result is 11

                        *** pass by ref***

module tb;
 
  
  function automatic int add(ref int m);
    m=100;
    $display("the value of m is %d",m);
  endfunction
  
  initial
    begin
     int a=10;
       //$display("the value of m is %d",m);
      add(a);                                  // here argument value does not copy to a but it helps to take  reference for a 
      $display("the value of a is %d",a);
    end
endmodule
    

# KERNEL: the value of m is         100
# KERNEL: the value of a is         100





         *** calling one function from another function***



module two_functions;
  
  function void disp1();
    
   
    
    disp2();
 
  endfunction
  function void disp2();
    
    $display("called display2()");
  endfunction
    
    initial
      begin
        repeat(5) begin
        disp1();
        end
      end
endmodule



# KERNEL: called display2()
# KERNEL: called display2()
# KERNEL: called display2()
# KERNEL: called display2()
# KERNEL: called display2()






