

class ahb_agent extends uvm_agent ;

   //Factory Registration 
   `uvm_component_utils(uvm_agent)


   // ahb sequencer variable declaration 
   ahb_sequencer ahb_sqr_inst  ; 

   // ahb_driver variable declaration 
   ahb_driver ahb_drv_inst	;

   // ahb monitor variable declaration 
   ahb_monitor ahb_mntr_inst	;

  // analysis port 
  uvm_analysis_port#(ahb_sequ_item_base) a_prt;

   funciton new(string name="ahb_agent",uvm_component parent);
      super.new(name,parent);
   endfunction:new


   virtual function void build_phase(uvm_phase phase);
	   super.build_phase(phase);
	   if(!uvm_config_db(ahb_config_agent)::get(this,"","ahb_cfg_agt_inst",ahb_cfg_agt_inst)) 
		   `uvm_fatal(get_full_name()," Get call Failed") ;
	   if(ahb_cfg_agt_inst.is_active == UVM_ACTIVE) begin
	   // Creating object for sequencer 
	   ahb_sqr_inst=ahb_sequencer::type_id::create("ahb_sqr_inst",this);
	   // Creating object for the Driver 
	   ahb_drv_inst=ahb_driver::type_id::create("ahb_drv_inst",this);
           end
	   // Creating object for the monitor 
	   ahb_mntr_inst=ahb_monitor::type_id::create("ahb_mntr_inst",this);
   endfunction:build_phase

virtual function void connect_phase(uvm_phase phase);
	super.connect_phase(phase);
	this.a_prt = ahb_mntr_inst.a_prt;// Just Pointing the actual analysis port in monitor.
ahb_drv_inst.seq_item_port.connect(ahb_sqr_inst.seq_item_export);
endfunction:connect_phase

endclass:ahb_agent

