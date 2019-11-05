`timescale 1ns / 1ps
module stimulus;
	// Inputs
	reg clk ;
	reg reset;
	// Output
	wire [3:0] binary;
	// Instantiate the Binary Counter
	binary_counter  #(4) s1  (
		.clk(clk), 
		.reset(reset),
		.binary(binary)
	);
 
 integer i;
 
initial 
begin

$dumpfile("out_test.vcd");
$dumpvars(0,stimulus);
$monitor("clk=%d binary=%4b",clk,binary);

 clk = 0;

 
reset = 1;
#2 reset = 0;
#2 reset = 1;

 for(i =0; i<=30; i=i+1)
  #50 clk = ~clk;
end
 
 
		initial begin
//		 $monitor("clk=%d binary=%4b",clk,binary);
		 end
 
endmodule