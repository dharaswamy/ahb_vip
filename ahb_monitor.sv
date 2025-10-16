

class ahb_monitor extends uvm_monitor;

	// Factory Registration 
	//  
	`uvm_component_utils(ahb_monitor)


	// Virtaul interface 
	virtual ahb_interface ahb_vintf;

	// analysis port 
	uvm_analysis_port#(ahb_sequ_item_base) a_prt ; 

	// 
	ahb_sequ_item_base ahb_sequ_item; 
	
	// new() 
	//
	function new(string name=get_type_name(),uvm_component parent);
		super.new(name,parent);
		`uvm_info("TRACE",$sformatf("%m"),UVM_HIGH)
		// Creating object for the analysis port 
		a_prt= new("a_prt",this);
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
		wait(ahb_vintf.hresetn);
		forever begin
 			// creating object 
			ahb_sequ_item=ahb_sequ_item_base::type_id::create("ahb_sequ_item");
			// Callin the sample task 

			// Broadcasting the transtions using write method.
			a_prt.write(ahb_sequ_item);

		end

	endtask:run_phase



endclass:ahb_monitor


