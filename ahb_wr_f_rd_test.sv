
class ahb_wr_f_rd_test extends ahb_test_base;

	`uvm_component_utils(ahb_wr_f_rd_test)

	ahb_sequ_base ahb_sequ_b_inst;

	function new(string name=get_type_name(),uvm_component parent);
		super.new(name,parent);
		`uvm_info("TRACE",$sformatf("%m"),UVM_HIGH)
	endfunction:new

	virtual function void build_phase(uvm_phase phase);
		super.build_phase(phase);
		ahb_sequ_b_inst=ahb_sequ_base::type_id::create("ahb_sequ_b_inst");
	endfunction:build_phase

	virtual task run_phase(uvm_phase phase);
		super.run_phase(phase);
		phase.raise_objection(this);
		ahb_sequ_b_inst.start(ahb_env_inst.ahb_agt_inst.ahb_sqr_inst);
		phase.drop_objection(this);
		phase.set_drain_time(this,100);
	endtask:run_phase

endclass:ahb_wr_f_rd_test 


