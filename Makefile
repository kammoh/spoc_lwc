# path to where lwc*.mk files reside. $(PWD) is the currect working directory
# by default LWCSRC_DIR will be set as $(LWC_ROOT)/LWCsrc but can also be overwritten
LWC_ROOT ?= $(PWD)/LWC/hardware

# Change if `sources_list` file is at a different path
#SOURCE_LIST_FILE := $(CORE_ROOT)/source_list.txt


### other variables to override
VERILATOR_LINT_FLAGS=-Wno-WIDTH -Wno-WIDTHCONCAT


# lint (checking) targets
#include $(LWC_ROOT)/lwc_common.mk
include $(LWC_ROOT)/lwc_lint.mk

# simulation targets
include $(LWC_ROOT)/lwc_sim.mk

# FPGA synthesis targets
include $(LWC_ROOT)/lwc_synth_fpga.mk

# ASIC synthesis targets
include $(LWC_ROOT)/lwc_synth_asic.mk
