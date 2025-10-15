

class ahb_sequ_item_base extends uvm_sequence_item ;

	// 
	// 
	
	rand bit[15:0] hselx;
	rand bit[31:0] haddr[];
        rand bit[2:0] hburst;
	rand bit      hmastlock; 
	rand bit[3:0]  hprot ;
	rand bit[2:0]  hsize;
	rand bit       hnonsec;
	rand bit       hexcl;
	rand bit[3:0]  hmaster ; 
	rand bit[1:0]  htrans[];
	rand bit[31:0] hwdata[];
	rand bit       hwrite;


	bit[31:0] hrdata[]; 
	bit       hready;
	bit  hresp;
	bit  hexokay; 



	//Factory registration 
	// 
	`uvm_object_utils_begin(ahb_sequ_item_base)
         	`uvm_field_int(hselx,UVM_ALL_ON)
		`uvm_field_array_int(haddr,UVM_ALL_ON)
		`uvm_field_int(hburst,UVM_ALL_ON)
		`uvm_field_int(hmastlock,UVM_ALL_ON)
		`uvm_field_int(hprot,UVM_ALL_ON)
		`uvm_field_int(hsize,UVM_ALL_ON)
		`uvm_field_int(hnonsec,UVM_ALL_ON)
		`uvm_field_int(hexcl,UVM_ALL_ON)
		`uvm_field_int(hmaster,UVM_ALL_ON)
		`uvm_field_array_int(htrans,UVM_ALL_ON)
		`uvm_field_array_int(hwdata,UVM_ALL_ON)
		`uvm_field_int(hwrite,UVM_ALL_ON) 
		`uvm_field_array_int(hrdata,UVM_ALL_ON)
		`uvm_field_int(hready,UVM_ALL_ON)
		`uvm_field_int(hready,UVM_ALL_ON)
		`uvm_field_int(hexokay,UVM_ALL_ON)
	`uvm_object_utils_end


	function new(string name="ahb_sequ_item_base");
		super.new(name);
	endfunction:new

endclass





	
	
