

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



	clocking ahb_drv_cb@(posedge hclk);
		default input #1 output #1 ; 
		
		input hrdata;
		input hready;
		input hresp;
		input hexokay;

		output hselx ;
		output haddr ; 
		output hburst;
		output hmastlock;
		output hprot;
		output hsize;
		output hnonsec;
		output hexcl;
		output hmaster;
		output htrans;
		output hwdata;
		output hwrite;

	endclocking:ahb_drv_cb

	modport ahb_drv_mp(clocking ahb_drv_cb);

	clocking ahb_mntr_cb@(posedge hclk);
		default input #1 output #1  ; 

		input hselx ;
		input haddr ;
		input hburst	;
		input hmastlock	;
		input hprot	;
		input hsize	;
		input hnonsec	;
		input hexcl	;
		input hmaster	;
		input htrans	;
		input hwdata	;
		input hwrite	;
		input hrdata	;
		input hready	;
		input hresp	;
		input hexokay	;
		
	endclocking:ahb_mntr_cb
	
	modport ahb_mntr_mp(clocking ahb_mntr_cb);


endinterface:ahb_interface


