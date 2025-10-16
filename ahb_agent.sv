

class ahb_agent extends uvm_agent ;

   //Factory Registration 
   `uvm_component_utils(uvm_agent)


   // ahb sequencer variable declaration 
   ahb_sequencer ahb_sqr_inst  ; 

   // ahb_driver variable declaration 
   ahb_driver ahb_drv_inst	;

   // ahb monitor variable declaration 
   ahb_monitor ahb_mntr_inst	;


   funciton new(string name="ahb_agent",uvm_component parent);
      super.new(name,parent);
   endfunction:new


   virtual function void build_phase(uvm_phase phase);
	   super.build_phase(phase);
	   // Creating object for sequencer 
	   ahb_sqr_inst=ahb_sequencer::type_id::create("ahb_sqr_inst",this);
	   // Creating object for the Driver 
	   ahb_drv_inst=ahb_driver::type_id::create("ahb_drv_inst",this);
	   // Creating object for the monitor 
	   ahb_mntr_inst=ahb_monitor::type_id::create("ahb_mntr_inst",this);
endclass:ahb_agent 


