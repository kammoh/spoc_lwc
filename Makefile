LWC_ROOT ?= $(PWD)/LWC

# Change if `sources_list` file is at a different path
#SOURCE_LIST_FILE := $(CORE_ROOT)/source_list.txt


### other variables to override
VERILATOR_LINT_FLAGS=-Wno-WIDTH -Wno-WIDTHCONCAT


include $(LWC_ROOT)/hardware/lwc.mk

