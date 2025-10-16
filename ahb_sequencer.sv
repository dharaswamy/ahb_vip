


class ahb_sequencer extends uvm_sequencer#(ahb_sequ_item_base);

	// Factory Registration 
	`uvm_component_utils(ahb_sequencer)


	// Function new();
	function new(string name=get_type_name(),uvm_component parent);
		super.new(name,parent);
		`uvm_info("TRACE","%m",UVM_HIGH) 
	endfunction:new


endclass:ahb_sequencer
