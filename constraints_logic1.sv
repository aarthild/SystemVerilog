//write a constraint for 4bit dynamic arfray with the size of 10 and store the random values into the dynamic array in ascending order and decending vice versa
class sample;
  int i;
  rand bit[3:0]a[];
  constraint c1{a.size==10;
                foreach(a[i])
                  if(i>=0)
                    a[i]>a[i-1];//ascending
                 // if(i>0)
                  //  a[i]<a[i-1]; decending
                  }
endclass

module tb;
  sample s=new();
  initial begin
    assert(s.randomize());
    foreach(s.a[i])
      $display("a[%0d]=%0d",i,s.a[i]);
  end
endmodule
