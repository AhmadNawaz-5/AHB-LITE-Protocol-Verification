`include "test.sv"
`include "interface.sv"
`include "wrapper.sv"
module top;

	bit clock = 0;
	logic reset = 1;


	always begin 
	    clock = ~clock;
	 #2;
	end


Interface intf(HCLK,HRESETn);		
wrapper wrap(intf.DUT);		
test t1(intf.Test);	


endmodule