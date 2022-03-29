set_property SRC_FILE_INFO {cfile:c:/PIPNP/PIPNP.gen/sources_1/ip/clk_wiz_0/clk_wiz_0/clk_wiz_0_in_context.xdc rfile:../../../../../PIPNP.gen/sources_1/ip/clk_wiz_0/clk_wiz_0/clk_wiz_0_in_context.xdc id:1 order:EARLY scoped_inst:nolabel_line55} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:1 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 10.000 -name GCLK [get_ports GCLK]
set_property src_info {type:SCOPED_XDC file:1 line:2 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -name nolabel_line55/clk_out2 -source [get_pins nolabel_line55/clk_in1] -edges {1 2 3} -edge_shift {0.000 14.886 29.773} [get_pins nolabel_line55/clk_out2]
set_property src_info {type:SCOPED_XDC file:1 line:3 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -name nolabel_line55/clk_out1 -source [get_pins nolabel_line55/clk_in1] -edges {1 2 3} -edge_shift {0.000 54.659 109.318} [get_pins nolabel_line55/clk_out1]
set_property src_info {type:SCOPED_XDC file:1 line:4 export:INPUT save:INPUT read:READ} [current_design]
set_property IO_BUFFER_TYPE NONE [get_ports GCLK]
set_property src_info {type:SCOPED_XDC file:1 line:5 export:INPUT save:INPUT read:READ} [current_design]
set_property CLOCK_BUFFER_TYPE NONE [get_ports GCLK]
set_property src_info {type:SCOPED_XDC file:1 line:6 export:INPUT save:INPUT read:READ} [current_design]
set_property IS_IP_OOC_CELL true [get_cells nolabel_line55]
set_property src_info {type:TCL file:{} line:-1 export:INPUT save:INPUT read:READ} [current_design]
set_property KEEP_HIERARCHY SOFT [get_cells nolabel_line55]