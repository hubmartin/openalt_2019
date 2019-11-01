//------------------------------------------------------------------
//-- Verilog template
//-- Test-bench entity
//-- Board: icestick
//------------------------------------------------------------------

`default_nettype none
`define DUMPSTR(x) `"x.vcd`"
`timescale 1 ns / 1 ns

module main_tb();

//-- Simulation time: 1us (10 * 100ns)
parameter DURATION = 10000000;

//-- Clock signal. It is not used in this simulation
reg clk = 0;
always #(31) clk = ~clk;

//-- Led port
wire PIN_24;

//-- Instantiation of the unit to test
top UUT (
  .PIN_24(PIN_24),
  .CLK(clk)
  );

initial begin
  //-- File were to store the simulation results
  $dumpfile(`DUMPSTR(`VCD_OUTPUT));
  $dumpvars(0, main_tb);

   #(DURATION) $display("End of simulation");
  $finish;
end

endmodule
