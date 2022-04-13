interface DUT();  
  logic HCLK;
  logic HSEL;
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
  bit HRESETn;
  
  modport slave (
  input  HRESETn,
  input  HCLK,
  input  HSEL,
  input  HADDR,
  input  HWDATA,
  output HRDATA,
  input  HWRITE,
  input  HSIZE,
  input  HBURST,
  input  HPROT,
  input  HTRANS,
  output HREADYOUT,
  input  HREADY,
  output HRESP
  );
  
  modport testslave ( 
  output HRESETn,
  output HCLK,
  output HSEL,
  output HADDR,
  output HWDATA,
  input  HRDATA,
  output HWRITE,
  output HSIZE,
  output HBURST,
  output HPROT,
  output HTRANS,
  input  HREADYOUT,
  output HREADY,
  input  HRESP
  );
  
  modport dri2slave ( 
  output HSEL,
  output HADDR,
  output HWDATA,
  output HWRITE,
  output HSIZE,
  output HBURST,
  output HPROT,
  output HTRANS,
  output HREADY
  );
  
 modport slave2monitor (
  input HRDATA,
  input HREADYOUT,
  input HRESP
   );
   endinterface