

class ahb_env extends uvm_env;


	// Factory Registration 
	//
	`uvm_component_utils(ahb_env)

	// ahb agent varaible declaration
	ahb_agent ahb_agt_inst;

	// ahb scoreboard variable declaration
	ahb_scoreboard ahb_scb_inst;

	// ahb subscriber variable declaration
	ahb_subscriber ahb_sub_inst;



	// Funtion new();
	//  
	function new(string name="ahb_env",uvm_component parent);
		super.new(name,parent);
		`uvm_info("TRACE",$sformatf("%m"),UVM_HIGH)
	endfunction:new

	virtual function void build_phase(uvm_phase phase);
		super.build_phase(phase);
		// Creating object for the ahb_agent
		ahb_agt_inst=ahb_agent::type_id::create("ahb_agt_inst",this);
		//Creating object for the ahb_scoreboard
		ahb_scb_inst=ahb_scoreboard::type_id::create("ahb_scb_inst",this);
		// Creating object for the ahb_subscriber
		ahb_sub_inst=ahb_subscriber::type_id::create("ahb_sub_inst",this);
	endfunction:build_phase

	virtual function void connect_phase(uvm_phase phase);
		super.connect_phase(phase);
		ahb_agt_inst.a_prt.connect(ahb_scb_inst.a_imp);
		ahb_agt_inst.a_prt.connect(ahb_sub_inst.analysis_export);
	endfunction:connect_phase

endclass:ahb_env


