

class ahb_monitor extends uvm_monitor;

	// Factory Registration 
	//  
	`uvm_component_utils(ahb_monitor)


	// Virtaul interface 
	// 

	
	// new() 
	//
	function new(string name=get_type_name(),uvm_component parent);
		super.new(name,parent);
	endfunction:new

	//build_phase 
	// 
	virtual function void build_phase(uvm_phase phase);
		super.build_phase(phase);
	endfunction:build_phase


	// run_phase()
	//
	virtual protected task run_phase(uvm_phase phase);
		super.run_phase(phase);

	endtask:run_phase



endclass:ahb_monitor


