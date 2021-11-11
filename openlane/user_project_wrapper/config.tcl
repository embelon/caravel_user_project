# SPDX-FileCopyrightText: 2020 Efabless Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# SPDX-License-Identifier: Apache-2.0

# Base Configurations. Don't Touch
# section begin

set ::env(PDK) "sky130A"
set ::env(STD_CELL_LIBRARY) "sky130_fd_sc_hd"

# YOU ARE NOT ALLOWED TO CHANGE ANY VARIABLES DEFINED IN THE FIXED WRAPPER CFGS 
source $::env(CARAVEL_ROOT)/openlane/user_project_wrapper_empty/fixed_wrapper_cfgs.tcl

# YOU CAN CHANGE ANY VARIABLES DEFINED IN THE DEFAULT WRAPPER CFGS BY OVERRIDING THEM IN THIS CONFIG.TCL
source $::env(CARAVEL_ROOT)/openlane/user_project_wrapper_empty/default_wrapper_cfgs.tcl

set script_dir [file dirname [file normalize [info script]]]

set ::env(DESIGN_NAME) user_project_wrapper
#section end

# User Configurations

## Source Verilog Files
set ::env(VERILOG_FILES) "\
	$::env(CARAVEL_ROOT)/verilog/rtl/defines.v \
	$script_dir/../../verilog/rtl/user_project_wrapper.v"

## Clock configurations
set ::env(CLOCK_PORT) [list {wb_clk_i user_clock2}]
set ::env(CLOCK_NET) [list {openram_1kB.openram_clk0 wb_openram_wrapper.wb_clk_i wb_bus_mux.wb_clk_i wb_hyperram.wb_clk_i}]

set ::env(CLOCK_PERIOD) "13"

## Internal Macros
### Macro PDN Connections
set ::env(FP_PDN_ENABLE_MACROS_GRID) "1"
## set ::env(FP_PDN_CORE_RING) "1"
## set ::env(FP_PDN_ENABLE_GLOBAL_CONNECTIONS) "1"

set ::env(FP_PDN_MACRO_HOOKS) "\
	wb_openram_wrapper vccd1 vssd1 \
	openram_1kB vccd1 vssd1 \
	wb_bus_mux vccd1 vssd1 \
	wb_hyperram vccd1 vssd1 "

set ::env(VDD_NETS) "vccd1 vccd2 vdda1 vdda2"
set ::env(GND_NETS) "vssd1 vssd2 vssa1 vssa2"

# disable pdn check nodes becuase it hangs with multiple power domains.
# any issue with pdn connections will be flagged with LVS so it is not a critical check.
set ::env(FP_PDN_CHECK_NODES) 0

set ::env(FP_PDN_ENABLE_RAILS) 0

### Macro Placement
set ::env(MACRO_PLACEMENT_CFG) $script_dir/macro.cfg
# This is workaround for precheck issues with met4 clearance after maglef substitution for OpenRAM
set ::env(GLB_RT_OBS) "met4 1000 1000 1479.78 1397.50"

### Black-box verilog and views
set ::env(VERILOG_FILES_BLACKBOX) "\
	$::env(CARAVEL_ROOT)/verilog/rtl/defines.v \
	$script_dir/../../wb_openram_wrapper/src/wb_openram_wrapper.v \
	$script_dir/../../wb_ram_bus_mux/src/wb_ram_bus_mux.v \
	$script_dir/../../wb_hyperram/src/wb_hyperram.v \
	$::env(PDK_ROOT)/$::env(PDK)/libs.ref/sky130_sram_macros/verilog/sky130_sram_1kbyte_1rw1r_32x256_8.v"

set ::env(EXTRA_LEFS) "\
	$script_dir/../../wb_openram_wrapper/lef/wb_openram_wrapper.lef \
	$script_dir/../../wb_ram_bus_mux/lef/wb_ram_bus_mux.lef \
	$script_dir/../../wb_hyperram/lef/wb_hyperram.lef \
	$::env(PDK_ROOT)/$::env(PDK)/libs.ref/sky130_sram_macros/lef/sky130_sram_1kbyte_1rw1r_32x256_8.lef"

set ::env(EXTRA_GDS_FILES) "\
	$script_dir/../../wb_openram_wrapper/gds/wb_openram_wrapper.gds \
	$script_dir/../../wb_ram_bus_mux/gds/wb_ram_bus_mux.gds \
	$script_dir/../../wb_hyperram/gds/wb_hyperram.gds \
	$::env(PDK_ROOT)/$::env(PDK)/libs.ref/sky130_sram_macros/gds/sky130_sram_1kbyte_1rw1r_32x256_8.gds"

# use 4 cores
set ::env(ROUTING_CORES) 4

set ::env(GLB_RT_MAXLAYER) 5

set ::env(FP_HORIZONTAL_HALO) 20
set ::env(FP_VERTICAL_HALO) 20

# The following is because there are no std cells in the example wrapper project.
set ::env(SYNTH_TOP_LEVEL) 1
set ::env(PL_RANDOM_GLB_PLACEMENT) 1

set ::env(PL_RESIZER_DESIGN_OPTIMIZATIONS) 0
set ::env(PL_RESIZER_TIMING_OPTIMIZATIONS) 0
set ::env(PL_RESIZER_BUFFER_INPUT_PORTS) 0
set ::env(PL_RESIZER_BUFFER_OUTPUT_PORTS) 0

set ::env(DIODE_INSERTION_STRATEGY) 0
set ::env(FILL_INSERTION) 0
set ::env(TAP_DECAP_INSERTION) 0
set ::env(CLOCK_TREE_SYNTH) 0
