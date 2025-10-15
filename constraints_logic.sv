
//consider a 4bit dynamic array with a size of 10 and store the unique values into the given dynamic array without using unique keyword
class sample;
  int i,j;
  rand bit[3:0]a[];
  constraint c1{a.size==10;
                foreach(a[i])
                  foreach(a[j])
                    if(i!=j) a[i]!=a[j];}
endclass

module tb;
  sample s=new();
  initial begin
    assert(s.randomize());
    foreach(s.a[i])
      $display("a[%0d]=%0d",i,s.a[i]);
  end
endmodule

//output:
/* KERNEL: a[0]=7
# KERNEL: a[1]=8
# KERNEL: a[2]=0
# KERNEL: a[3]=2
# KERNEL: a[4]=4
# KERNEL: a[5]=5
# KERNEL: a[6]=12
# KERNEL: a[7]=13
# KERNEL: a[8]=9
# KERNEL: a[9]=1*/
