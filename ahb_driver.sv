


class ahb_driver extends uvm_driver#(ahb_sequ_item_base);


	// Factory registration 
	//  
	`uvm_component_utils(ahb_driver)


	// virtaul interface handle declaration 
	//
	

	// Function new() 
	//
	function new(string name=get_type_name(),uvm_component parent);
		super.new(name,parent);
	endfunction:new


	virtual function void build_phase(uvm_phase phase);
		super.build_phase(phase);
	endfunction:build_phase


	virtual protected task run_phase(uvm_phase phase);
		super.run_phase(phase);

	endtask:run_phase



endclass:ahb_driver 


