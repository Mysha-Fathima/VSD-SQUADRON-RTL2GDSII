export DESIGN_NAME = user_project_wrapper
export PLATFORM    = sky130hd

export VERILOG_FILES = $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/__user_project_wrapper.v \
                       $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/debug_regs.v
export VERILOG_DEFINES = -DMPRJ_IO_PADS=38 -DSIM

export SDC_FILE = $(DESIGN_HOME)/$(PLATFORM)/$(DESIGN_NICKNAME)/constraint.sdc

# Caravel user area, fixed size so all ~500 pins fit
export DIE_AREA  = 0 0 2920 3520
export CORE_AREA = 10 10 2910 3510
