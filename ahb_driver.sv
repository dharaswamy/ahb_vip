


class ahb_driver extends uvm_driver#(ahb_sequ_item_base);


	// Factory registration 
	//  
	`uvm_component_utils(ahb_driver)


	// virtaul interface handle declaration 
	virtual ahb_interface ahb_vintf ; 
	
	// 
	ahb_cofig_agent ahb_cfg_agt_inst;

	// Function new() 
	//
	function new(string name=get_type_name(),uvm_component parent);
		super.new(name,parent);
	endfunction:new


	virtual function void build_phase(uvm_phase phase);
		super.build_phase(phase);
		if(!uvm_config_db#(ahb_config_agent)::get(this,"","ahb_cfg-agt_inst",ahb_cfg_agt_inst))begin
			`uvm_fatal("AHB_CONFIG_AGENT","First set the ahb_cfg_agt_inst into the config db")
		end
	endfunction:build_phase

	virtual function void connect_phase(uvm_phase phase);
		super.connect_phase(phase);
		this.ahb_vintf=ahb_cfg_agt_inst.ahb_vintf;
	endfunction:connect_phase


	virtual protected task run_phase(uvm_phase phase);
		super.run_phase(phase);
		//wait(!ahb_vintf.hresetn);
		forever begin
			seq_item_port.get_next_item(req);
			`uvm_info("TRANSACTION_RECIEVED",$sformatf("%0s",req.sprint(),UVM_HIGH)
			//drive
			seq_item_port.item_done(req);
		end
	endtask:run_phase



endclass:ahb_driver 


