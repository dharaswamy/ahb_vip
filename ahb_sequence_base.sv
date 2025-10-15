


class ahb_sequence_base extends uvm_sequence#(ahb_sequ_item_base);


	// Factory Registration 
	//  
	`uvm_object_utils(ahb_sequence_base)


	// new() 
	//
	function new(string name = "ahb_sequence_base");
		super.new(name);
	endfunction:new

	// body()
	//
	virtual task body();
		// 
		req=abh_sequ_item_base::type_id::create("req");
		// 
		start_item(req);
		void'(req.randomize());
		finish_item(req);

	endtask:body 

endclass:ahb_sequence_base 



