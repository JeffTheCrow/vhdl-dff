##### Overview



This project implements a basic D-type flip-flop in VHDL with an asynchronous reset. The D flip-flop updates its output 'Q' on the rising edge of the clock. In case when RST = '1', output Q is reset to '0'. Otherwise, on each rising clock edge, Q follows input D.



##### Features



* RTL implementation in VHDL
* Asynchronous active-high reset
* Clocked D flip-flop behaviour
* Simulation verified in ModelSim



##### Project Structure



src/dff.vhdl -- RTL design of D flip-flop

tb/dff\_tb.vhdl -- Self-checking testbench

.gitignore -- Excludes simulation artifacts

README.md -- Project documentation



##### Simulation



In order to compile and run the simulation paste the following commands into your terminal:



vlib work

vcom src/dff.vhdl

vcom tb/dff\_tb.vhdl

vsim work.dff\_tb.vhdl



Your ModelSim should open now, in the Transcript window in ModelSim run



run 100 ns



##### Testbench Strategy



This testbench uses clock generation process and stimulus process with directed tests. Assertions are used for automatic verification.



##### Author



Aleksa Pešić

Digital design / FPGA learning project

