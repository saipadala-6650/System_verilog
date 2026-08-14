module tb;
  int arr[2][2][2];
  
  initial
    begin
      arr = '{
                '{ '{default:0},'{default:1}},
        '{'{default:1},'{default:0}}};
   //   arr = '{default:'{default:'{default:1}}};
      $display("The value of arr is %p",arr);
    end
endmodule


output:- '{'{'{0, 0}, '{1, 1}}, '{'{1, 1}, '{0, 0}}} // if we want to declare N-number of same elements in a 3D unpacked arrays  we use default
