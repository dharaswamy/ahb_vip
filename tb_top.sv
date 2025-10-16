
module tb_top;

// Clock declaration and reset 
logic clk=1'b0,resetn=1'b1;

// interface instantiation 
ahb_interface ahb_intf(clk,resetn);

// For dumping the waveforms
initial begin
	$dumpfile("dump.vcd");
	$dumpvars;
end

initial begin
	uvm_config_db#(virtaul ahb_interface)::set(null,"uvm_test_top","ahb_vintf",ahb_intf);

endmodule:tb_top
