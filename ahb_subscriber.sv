
class ahb_subscriber extends uvm_subscriber#(ahb_sequ_item_base);
	
	// Factory Registration 
	`uvm_component_utils(ahb_subscriber) 

	//new()
	function new(sting name=get_type_name(),uvm_component parent);
		super.new(name,parent);
		`uvm_info("TRACE",$sformatf("%m"),UVM_HIGH)
	endfunction:new

	function void write(ahb_sequ_item_base t);
		`uvm_info(get_full_name(),$sformatf("Recieved the Transaction %s",t.sprint()),UVM_NONE)
	endfunction:write

endclass:ahb_subscriber


