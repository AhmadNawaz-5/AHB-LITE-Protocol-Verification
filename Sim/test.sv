`include "Environment.sv"
program test(Interface intf);

  Environment env;
  
  initial begin
     $display("\n\n..... initial....\n\n");
     env = new(intf);
    
    env.run();
  end

endprogram