# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_S00_AXI_DATA_WIDTH" -parent ${Page_0} -widget comboBox
  ipgui::add_param $IPINST -name "C_S00_AXI_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S00_AXI_BASEADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S00_AXI_HIGHADDR" -parent ${Page_0}

  ipgui::add_param $IPINST -name "DEFAULT_LOW"
  ipgui::add_param $IPINST -name "DEFAULT_HIGH"

}

proc update_PARAM_VALUE.APT_HIGH_THRESH { PARAM_VALUE.APT_HIGH_THRESH } {
	# Procedure called to update APT_HIGH_THRESH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.APT_HIGH_THRESH { PARAM_VALUE.APT_HIGH_THRESH } {
	# Procedure called to validate APT_HIGH_THRESH
	return true
}

proc update_PARAM_VALUE.APT_LOW_THRESH { PARAM_VALUE.APT_LOW_THRESH } {
	# Procedure called to update APT_LOW_THRESH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.APT_LOW_THRESH { PARAM_VALUE.APT_LOW_THRESH } {
	# Procedure called to validate APT_LOW_THRESH
	return true
}

proc update_PARAM_VALUE.APT_WIN_SIZE { PARAM_VALUE.APT_WIN_SIZE } {
	# Procedure called to update APT_WIN_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.APT_WIN_SIZE { PARAM_VALUE.APT_WIN_SIZE } {
	# Procedure called to validate APT_WIN_SIZE
	return true
}

proc update_PARAM_VALUE.DEFAULT_HIGH { PARAM_VALUE.DEFAULT_HIGH } {
	# Procedure called to update DEFAULT_HIGH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DEFAULT_HIGH { PARAM_VALUE.DEFAULT_HIGH } {
	# Procedure called to validate DEFAULT_HIGH
	return true
}

proc update_PARAM_VALUE.DEFAULT_LOW { PARAM_VALUE.DEFAULT_LOW } {
	# Procedure called to update DEFAULT_LOW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DEFAULT_LOW { PARAM_VALUE.DEFAULT_LOW } {
	# Procedure called to validate DEFAULT_LOW
	return true
}

proc update_PARAM_VALUE.NUM_RO { PARAM_VALUE.NUM_RO } {
	# Procedure called to update NUM_RO when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_RO { PARAM_VALUE.NUM_RO } {
	# Procedure called to validate NUM_RO
	return true
}

proc update_PARAM_VALUE.RCT_MAX_RUN { PARAM_VALUE.RCT_MAX_RUN } {
	# Procedure called to update RCT_MAX_RUN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RCT_MAX_RUN { PARAM_VALUE.RCT_MAX_RUN } {
	# Procedure called to validate RCT_MAX_RUN
	return true
}

proc update_PARAM_VALUE.RO_STAGES { PARAM_VALUE.RO_STAGES } {
	# Procedure called to update RO_STAGES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RO_STAGES { PARAM_VALUE.RO_STAGES } {
	# Procedure called to validate RO_STAGES
	return true
}

proc update_PARAM_VALUE.SAMPLE_DIV_WIDTH { PARAM_VALUE.SAMPLE_DIV_WIDTH } {
	# Procedure called to update SAMPLE_DIV_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SAMPLE_DIV_WIDTH { PARAM_VALUE.SAMPLE_DIV_WIDTH } {
	# Procedure called to validate SAMPLE_DIV_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to update C_S00_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to validate C_S00_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to update C_S00_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_S00_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_BASEADDR { PARAM_VALUE.C_S00_AXI_BASEADDR } {
	# Procedure called to update C_S00_AXI_BASEADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_BASEADDR { PARAM_VALUE.C_S00_AXI_BASEADDR } {
	# Procedure called to validate C_S00_AXI_BASEADDR
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_HIGHADDR { PARAM_VALUE.C_S00_AXI_HIGHADDR } {
	# Procedure called to update C_S00_AXI_HIGHADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_HIGHADDR { PARAM_VALUE.C_S00_AXI_HIGHADDR } {
	# Procedure called to validate C_S00_AXI_HIGHADDR
	return true
}


proc update_MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.NUM_RO { MODELPARAM_VALUE.NUM_RO PARAM_VALUE.NUM_RO } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_RO}] ${MODELPARAM_VALUE.NUM_RO}
}

proc update_MODELPARAM_VALUE.RO_STAGES { MODELPARAM_VALUE.RO_STAGES PARAM_VALUE.RO_STAGES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RO_STAGES}] ${MODELPARAM_VALUE.RO_STAGES}
}

proc update_MODELPARAM_VALUE.SAMPLE_DIV_WIDTH { MODELPARAM_VALUE.SAMPLE_DIV_WIDTH PARAM_VALUE.SAMPLE_DIV_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SAMPLE_DIV_WIDTH}] ${MODELPARAM_VALUE.SAMPLE_DIV_WIDTH}
}

proc update_MODELPARAM_VALUE.RCT_MAX_RUN { MODELPARAM_VALUE.RCT_MAX_RUN PARAM_VALUE.RCT_MAX_RUN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RCT_MAX_RUN}] ${MODELPARAM_VALUE.RCT_MAX_RUN}
}

proc update_MODELPARAM_VALUE.APT_WIN_SIZE { MODELPARAM_VALUE.APT_WIN_SIZE PARAM_VALUE.APT_WIN_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.APT_WIN_SIZE}] ${MODELPARAM_VALUE.APT_WIN_SIZE}
}

proc update_MODELPARAM_VALUE.APT_LOW_THRESH { MODELPARAM_VALUE.APT_LOW_THRESH PARAM_VALUE.APT_LOW_THRESH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.APT_LOW_THRESH}] ${MODELPARAM_VALUE.APT_LOW_THRESH}
}

proc update_MODELPARAM_VALUE.APT_HIGH_THRESH { MODELPARAM_VALUE.APT_HIGH_THRESH PARAM_VALUE.APT_HIGH_THRESH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.APT_HIGH_THRESH}] ${MODELPARAM_VALUE.APT_HIGH_THRESH}
}

proc update_MODELPARAM_VALUE.DEFAULT_LOW { MODELPARAM_VALUE.DEFAULT_LOW PARAM_VALUE.DEFAULT_LOW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DEFAULT_LOW}] ${MODELPARAM_VALUE.DEFAULT_LOW}
}

proc update_MODELPARAM_VALUE.DEFAULT_HIGH { MODELPARAM_VALUE.DEFAULT_HIGH PARAM_VALUE.DEFAULT_HIGH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DEFAULT_HIGH}] ${MODELPARAM_VALUE.DEFAULT_HIGH}
}

