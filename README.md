# FSM To Determine a Decimal Number Divisible By 5
This repository contains all the information needed to build your decimal number (0-9) divisible by 5 





# Introduction

The purpose of this project is to develop a simple FSM that can determine the divisibility of a ternary number by 5. The FSM takes advantage of the relationship between remainders and divisibility to efficiently make this determination. The report discusses the design, implementation, and usage of the FSM.




# Background and Objectives

This project involves designing and implementing a Finite State Machine (FSM) to determine the divisibility of a ternary number by 5. The objectives are to provide a practical illustration of FSMs in digital systems and demonstrate their role in solving arithmetic problems.

Role of FSMs in Digital Systems
FSMs are crucial components in digital systems, controlling various functions based on inputs and current states. Their applications range from controlling complex systems to solving mathematical problems efficiently in hardware.

# Icarus Verilog
iverilog or Icarus Verilog is a simulation and synthesis tool. It should be noted that we will be using it as a simulation tool only and do the synthesis using yosys. We will be viewing the simulation results using a waveform viewer known as gtkwave. It uses a .vcd file to produce the waveform. VCD stands for value change dump. It is a dump file that the gtkwave uses for simulation.
A testbench provides these 'changes' in values. A testbench is a Verilog program that checks the functionality of our design by giving various possible inputs to the design.



# FSM Design
The FSM is designed around five states, denoted as S0, S1, S2, S3, and S4, corresponding to the possible remainders when dividing by 5.  Transitions between these states occur based on the ternary digits of the input number. The transitions are defined such that the next state depends on the current state and the value of the current digit.

State S0: Represents the remainder 0 when dividing by 5.

State S1: Represents the remainder 1 when dividing by 5.

State S2: Represents the remainder 2 when dividing by 5.

State S3: Represents the remainder 3 when dividing by 5.

State S4: Represents the remainder 4 when dividing by 5.






![Screenshot from 2023-08-25 20-20-45](https://github.com/aakashbari/FSM-to-determine-a-decimal-number-divisible-by-5/assets/143193204/485fd25a-2c2d-41b1-9bb4-b2ac632cc2fe)
![Screenshot from 2023-08-25 20-21-09](https://github.com/aakashbari/FSM-to-determine-a-decimal-number-divisible-by-5/assets/143193204/6c6e0063-6380-405b-b14c-6c8002a120fb)
![Screenshot from 2023-08-25 20-21-12](https://github.com/aakashbari/FSM-to-determine-a-decimal-number-divisible-by-5/assets/143193204/03da25e4-f03f-45c2-906b-66b617b5d67b)




