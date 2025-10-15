

class ahb_agent extends uvm_agent ;

   //Factory Registration 
   `uvm_component_utils(uvm_agent)



   funciton new(string name="ahb_agent",uvm_component parent);
      super.new(name,parent);
   endfunction:new


endclass:ahb_agent 


