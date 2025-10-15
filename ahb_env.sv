

class ahb_env extends uvm_env;


	// Factory Registration 
	//
	`uvm_component_utils(ahb_env)

	

	// Funtion new();
	//  
	function new(string name="ahb_env",uvm_component parent);
		super.new(name,parent);
		`uvm_info("TRACE",$sformatf("%m"),UVM_HIGH)
	endfunction:new


endfunction:ahb_env


