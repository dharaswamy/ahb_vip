
class ahb_scoreboard extends uvm_scoreboard;

	// Factory Registration 
	`uvm_component_utils(ahb_scoreboard)

	// analysis port imp 
	uvm_analysis_imp#(ahp_sequ_item_base,ahb_scoreboard) a_imp;

	// 
	ahb_sequ_item_base ahb_sequ_item; 

	// new();
	function new(string name=get_type_name(),uvm_component parent);
		super.new(name,parent);
		`uvm_info("TRACE",$sformatf("%m"),UVM_HIGH)
		// Creating object for the analysis import 
		a_imp = new("a_imp",this);

	endfunction:new

	virtual function void write(ahb_sequ_item_base ahb_sequ_item);
		`uvm_info(get_full_name(),$sformatf("Recieved the Transaction %s",ahb_sequ_item.sprint),UVM_NONE)
	endfunction:write

endclass:ahb_scoreboard

