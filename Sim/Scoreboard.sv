class scoreboard;
  
 	 input bit[31:0]data;
 	 mailbox mon2scb;
      
 	 function new(mailbox mon2scb);
      		this.mon2scb = mon2scb;
       	 endfunction
  
 	 task score(data);
   		 mon2scb.get(tr);
   		 if(tr.HWRITE == 1)
	  	 	saved_data = tr.HWDATA;
       if(tr.HWRITE == 0) begin
         if (tr.HRDATA == data)
				$display("Okay");
			else 
				$error("Not Okay"); 
        	 end
      	end
	endtask

   	 task run();
    		  score(32'b0); 
    	endtask

endclass: scoreboard