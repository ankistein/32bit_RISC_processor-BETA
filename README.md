# A 32bit_RISC_processor- ABETA
# ABETA processor is a 32 bit RISC based processor proposed on Beta ISA(Instruction Set Architecture) of MIT, USA.
#  This github repository is a snipset of my actual implementation of ABETA processor, shared here for research knowledge sharing purpose for the benefit of scholars enrolled with MIT Research Lab & Educational Learning Center from different countries. 
  I(Ankit K V) am the the core developer and would love to recivie intuitive ideas & suggestion from other designers associated with MIT open source research. I encourage you to go ahead and verify the design using SV & UVM. You can start branch and send pull requests as well. Depending upon the implementation they will be approved time to time.

- The model should be highly configurable so that it become a good choice for SoC (System-on-a-chip) designs and advanced FPGAs as well. 
- A thorough code will be written in verilog for each sub-modules, additionaly testbench will also be written in Verilog to verify the functinality of each sub-modules using Cadence Tool Suit, Model-Sim Simulator & ISE Tool from Xilinx. Later the FPGA and ASIC synthesis will be done using other synthesis tools like Synplify Pro and Xilinx tool suits.
- NOTE: First basic version of abeta without pipelining has already implemented with reconfigurable datapath. Research paper on the same is avilable on IEEE Explorer. Now, the design for pipelined version is also completed & may be released soon.

# Present Status: Primary Sub-modules of proposed porcessor like Control Unit,Registor file, Program Counter, ALU etc has been devloped and verified. Now we are on ASIC synthesis.
