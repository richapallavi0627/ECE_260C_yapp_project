class yapp_env extends uvm_env;
 yapp_tx_agent tx_agent;

`uvm_component_utils(yapp_env)

  function new(string name, uvm_component parent);
   super.new(name,parent);
  endfunction
 
  virtual function void build_phase(uvm_phase phase);
   super.build_phase(phase);
   //tx_agent = new("tx_agent",this);
   tx_agent = yapp_tx_agent::type_id::create("tx_agent",this);
  endfunction

endclass
