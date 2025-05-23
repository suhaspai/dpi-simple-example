# Verilator Compilation and Simulation
# To compile and simulate the above code using Verilator, follow these steps:

all: clean compile link run

# Verilate the SystemVerilog code:
compile: module.sv dpi.cpp
	verilator --cc --exe --main module.sv dpi.cpp --top-module top

# Build the simulation executable:
link:
	make -j -C obj_dir -f Vtop.mk Vtop

# Run the simulation:
run:
	obj_dir/Vtop

# Housekeeping
clean:
	rm -rf obj_dir
