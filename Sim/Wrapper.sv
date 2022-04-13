module wrapper_slave(DUT.slave dut);
ahb3lite_sram1rw slave1(
     .HRESETn(dut.HRESETn),
     .HCLK(dut.HCLK),
     .HSEL(dut.HSEL),
     .HADDR(dut.HADDR),
     .HWDATA(dut.HWDATA),
     .HRDATA(dut.HRDATA),
     .HWRITE(dut.HWRITE),
     .HSIZE(dut.HSIZE),
     .HBURST(dut.HBURST),
     .HPROT(dut.HPROT),
     .HTRANS(dut.HTRANS),
     .HREADYOUT(dut.HREADYOUT),
     .HREADY(dut.HREADY),
     .HRESP(dut.HRESP));
      endmodule:wrapper_slave