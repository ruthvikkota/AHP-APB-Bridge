module apb_interface(pwrite,psel,penable,paddr,pwdata,pwriteout,pselout,penableout,paddrout,pwdataout,pr_data); 
input pwrite,penable;
input [2:0]psel;
input [31:0]pwdata,paddr; output pwriteout,penableout; output [2:0]pselout;
output [31:0]pwdataout,paddrout; output reg[31:0]pr_data;
assign penableout=penable; assign pselout=psel;
assign pwriteout=pwrite; assign paddrout=paddr; assign pwdataout=pwdata;
always @(*) begin
if(~pwrite && penable) pr_data=($random)%256; else
pr_data=0; end endmodule
