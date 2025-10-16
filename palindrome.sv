class sample;
  int i;
  rand bit[2:0]n,a[];
  constraint c1{a.size==5;
                foreach(a[i])
                  (a[i]==a[(a.size()-1)-i]);
                
                  }
endclass

module tb;
  sample s=new();
  initial begin
    repeat(10) begin
    assert(s.randomize());
    foreach(s.a[i])
      $write("%0d",s.a[i]);
      $display("\n");
    end
  end
  
endmodule
