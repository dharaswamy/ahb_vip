

interface ahb_interface(input hclk,hresetn);

	logic[15:0] hselx;
	logic[31:0] haddr;
	logic[2:0]  hburst;
	logic       hmastlock;
	logic[6:0]  hprot ; 
	logic[2:0]  hsize;
	logic       hnonsec;
	logic       hexcl;
	logic[3:0]  hmaster;
	logic[1:0]  htrans;
	logic[31:0] hwdata;
	logic       hwrite;

	logic[31:0] hrdata;
	logic       hready;
	logic       hresp;
	logic       hexokay;



endinterface:ahb_interface


