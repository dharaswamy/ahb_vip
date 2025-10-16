
class ahb_cofig_agent extends uvm_object;
	
	// Factory Registration 
	`uvm_object_utils(ahb_config_agent)


	// virtual interface 
	virtual ahb_interface ahb_vintf ; 

	// active or passive agent control switch 
	uvm_active_passivef_enum is_active=UVM_ACTIVE;

	
	//new() 
	function new(string name=get_type_name(),uvm_component parent);
		super.new(name,parent);
		`uvm_info("TRACE",$sformatf("%m"),UVM_HIGH)
	endfunction:new

endclass:ahb_config_agent 
