              // Example 1
 module example;
  
  struct {int id;
          string name;} person;
  
  initial begin
//     person.id=1;
//     person.name ="sai padala";
    person='{1,"sai_padala"};
    $display("The  values of id is %d and his name is %s",person.id,person.name);
    
  end 
endmodule


                // Example 2
module tb;
  
  struct {int number; string fruit; int cost;}st_fruit;
  
  
  initial begin
    st_fruit ='{10,"Apple",100};
    
    #10 $display("%p",st_fruit);
  // after some time the fruit will change
    #20
    st_fruit.fruit="pine apple";
    st_fruit.number=30;
    st_fruit.cost=150;
    $display("%p",st_fruit);
  end
endmodule



             // Example 3

module ex;
  struct {int a;
         int b;
          struct {int m;
                 int n;
                 }p2;}p1;
  
  initial
    begin
      p1.a = 10;
      p1.p2.m=20;
      
      $display("The value of a is %d",p1.a);
      $display("The value of m is %d",p1.p2.m);
    end
endmodule

   example 4

module tb;
  struct {int a;
          int b;
         }p1,p2;
  initial begin
    p2.a=1;
    p1.b=2;
    $display("%p",p1.a,p2.b);
  end
endmodule

  // example 5 for typedef

module example;
  
  typedef struct {int id;
          string name;} person;
  
  person p;// variable of type person 
  
  initial begin
    p.id=1;
   p.name ="sai padala";
   // person='{1,"sai_padala"};
    $display("The  values of id is %d and his name is %s",p.id,p.name);
    
  end 
endmodule
