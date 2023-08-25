


// Testbench

  module test;
  reg clk, reset_n,din;
  wire dout;
  initial begin
    clk=0;
  end
  
  //clock generation of time period 20 unit 
  always #10 clk=~clk;
  
  
  //instantiate the design
  fsm_5 dut(.clk(clk), .reset_n(reset_n), .din(din),.dout(dout));
  
  
  //initialisation 
  initial 
   begin
    reset_n=0;din=0;
    
    //Giving differnt stimuli to verify the design 
     #5 reset_n=1;din=1;
     #5 reset_n=0;din=0;
     #5 din=1;
     #5 din=0;
     #5 din=1;
     #5 din=0;
     #5 din=1;
     #5 din=0;
     #5 din=1;
     #5 din=0;
     #5 din=1;
     #5 din=1;
     #5 din=0;
     #5 din=1;
     #5 din=0;
     #5 din=1;
     #5 din=0;
     #5 din=1;
     #5 din=0;
     #5 din=1;
     #5 din=0;
     #5 din=1;
     #5 din=1;
     #5 din=0;
     #5 din=1;
    #500 $finish;
  end
  
  
 	 initial
         begin
    	 $dumpfile("top.vcd");
     	 $dumpvars;
     	 $monitor("time=%d,clk=%d,reset_n=%d,din=%d,dout=%d",$time,clk,reset_n,din,dout);
    end
endmodule




