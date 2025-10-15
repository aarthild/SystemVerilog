//write a constraint for 4bit dynamic arfray with the size of 10 and store the random values into the dynamic array in ascending order and decending vice versa
class sample;
  int i;
  rand bit[3:0]a[];
  constraint c1{a.size==8;
                foreach(a[i])
                if(i>1)
                  a[i]==a[i-1]+a[i-2];
                else
                  a[0]==0;a[1]==1;
                
                  }
endclass

module tb;
  sample s=new();
  initial begin
    assert(s.randomize());
    foreach(s.a[i])
      $write("%0d ",s.a[i]);
  end
endmodule
//KERNEL: 0 1 1 2 3 5 8 13 
