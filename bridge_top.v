module bridge_top(
input hclk,hresetn,hwrite,hready_in, input[1:0]htrans, input[31:0]hwdata,haddr,pr_data, output penable,pwrite,hr_readyout, output[2:0]psel,
output[1:0]hres, output[31:0]paddr,pwdata,hr_data);
wire [31:0]hwdata1,hwdata2,haddr1,haddr2; wire [2:0]temp_sel;
wire hwrite_reg,hwrite_reg1;
wire valid;
ahb_slave_interface ahb(hclk,hresetn,hwrite,hready_in,htrans,hwdata,haddr,pr_data,hwrite_reg,hwrite_reg1,valid,hwdata1, hwdata2,haddr1,haddr2,hr_data,temp_sel);
apb_controller apb(hclk,hresetn,hwrite,hwrite_reg,valid,haddr,haddr1,haddr2,hwdata,hwdata1,hwdata2,pr_data, temp_sel, pwrite,penable,hr_readyout, psel, paddr,pwdata);
endmodule
