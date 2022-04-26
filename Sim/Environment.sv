`include "transcations.sv"
`include "monitor.sv"
`include "Scoreboard.sv"
`include "generator.sv"
`include "Driver.sv"
`include "Interface.sv"
class environment;
  Generator  gen;
  Driver     drv;
  Monitor    mon;
  Scoreboard scb;
  
  mailbox gen2drv;
  mailbox mon2scb;
  
  virtual interface Interface intf;
    function new(virtual interface Interface intf);
      this.intf = intf;
      gen2drv=new;
      mon2scb=new;
      gen=new(gen2drv);
      drv=new(intf, gen2drv);
      mon=new(intf, mon2scb);
      scb=new(mon2scb);
    endfunction
      
    task main();
	drv.reset();
	#100
	$display("...Test... ");
 	fork
     		 	gen.run(1,5);
     		 	drv.run(); 
			    mon.run();
			    scb.run();
	join
     endtask


	task run();
	main();
	$stop;
endtask

endclass: environment