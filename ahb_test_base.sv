



class ahb_test_base extends uvm_test;


	//Factory Registration 
	`uvm_component_utils(ahb_test_base) 


	// ahb_env Variable declaration 
	//
	ahb_env ahb_env_inst; 

	// uvm_factory for printin the which class are registered with factory 
	//  
	uvm_factory factory ; 

	// 
	uvm_core_service_t cs = uvm_core_service_t::get(); 


	//Default Constructor :new() 
	//
	function new(string name="ahb_test_base",uvm_component parent);
		super.new(name,parent);
		`uvm_info("TRACE",$sformatf("%m"),UVM_HIGH) 
	endfunction:new

	// build_phase()
	//  
	function void build_phase(uvm_phase phase);

		super.build_phase(phase);
		// Creating the object for the ahb_env 
		ahb_env_inst = ahb_env::type_id::create("ahb_env_inst",this);

	endfunction:build_phase 


	function void start_of_simulation_phase(uvm_phase phase);

		super.start_of_simulation_phase(phase);
		factory = cs.get_factory ; 
		factory.print();
		uvm_top.print_topology();

	endfunction:start_of_simulation_phase
	



endclass:ahb_test_base 





