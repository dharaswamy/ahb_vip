

class ahb_sequ_base extends uvm_sequence#(ahb_sequ_item_base);

	// 
	`uvm_object_utils(ahb_sequ_base)


	function new(string name=get_type_name());
		super.new(name);
		`uvm_info("TRACE",$sformatf("%m"))
	endfunction:new

	virtual task body();
		
		req=ahb_sequ_item_base::type_id::create("req");
		wait_for_grant();
		assert(req.randomize()) `uvm_info("Randomization_sucess",$sformatf("%0s",req.sprint),UVM_HIGH) 
		else `uvm_fatal("RANDOMIZATION","Randomization is Failed");
		send_request(req);
		wait_for_item_done(req);

	endtask:body
