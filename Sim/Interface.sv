interface ahb(input logic HCLK, HRESETn);  
  logic [1:0] HSEL;
  logic [31:0] HADDR;
  logic [31:0] HWDATA;
  logic [31:0] HRDATA;
  logic HWRITE;
  logic [2:0] HSIZE;
  logic [2:0] HBURST;
  logic [3:0] HPROT;
  logic [1:0] HTRANS;
  logic HREADYOUT;
  logic HREADY;
  logic HRESP;
  logic HMASTLOCK;
  
  modport slave (
      	input  		HRESETn,
      	input  		HCLK,
      	input   	HSEL,
  	input   	HADDR,
 	input   	HWDATA,
  	output 		HRDATA,
  	input           HWRITE,
  	input       	HSIZE,
  	input       	HBURST,
  	input       	HPROT,
  	input       	HTRANS,
        input           HMASTLOCK,
  	output 		HREADYOUT,
  	input           HREADY,
  	output          HRESP
  );
 modport master (
      	input  	        HRESETn,
      	input  	        HCLK,
      	output   	HSEL,
  	output   	HADDR,
 	output   	HWDATA,
  	output          HWRITE,
  	output       	HSIZE,
  	output       	HBURST,
  	output       	HPROT,
  	output       	HTRANS,
  	input           HREADY,
        output          HMASTLOCK,
	input           HRDATA,
	input           HRESP
  );

 modport MON (
	input  		HRESETn,
      	input  		HCLK,
      	input   	HSEL,
  	input   	HADDR,
 	input   	HWDATA,
  	input           HWRITE,
  	input       	HSIZE,
  	input       	HBURST,
  	input       	HPROT,
  	input       	HTRANS,
        input           HMASTLOCK,
  	input           HREADY,	
	input 		HRDATA,
	input 		HREADYOUT,
	input          HRESP);

endinterface
