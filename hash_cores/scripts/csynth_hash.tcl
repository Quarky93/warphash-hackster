set hash [lindex $argv 2]
set mode [lindex $argv 3]
set freq [lindex $argv 4]
set tune [lindex $argv 5]

open_project ${hash}_${mode} -reset

add_files ../include/hw/warphash.h
add_files ../include/hw/state_matrix.h
add_files ../src/hw/core/${hash}.cpp -cflags "-I../include/hw/"

set_top ${hash}_${mode}
open_solution "${hash}_${mode}_f${freq}" -flow_target vivado -reset
set_part {xcvu33p-fsvh2104-2-e}
create_clock -period ${freq}MHz -name default
if {${tune} != ""} {
	set_clock_uncertainty ${tune} default
}

set_directive_interface -mode ap_ctrl_none ${hash}_${mode}
set_directive_interface -mode ap_none ${hash}_${mode} msg
# set_directive_aggregate -compact bit ${hash}_${mode} msg
# set_directive_aggregate -compact bit ${hash}_${mode} tmp

config_compile -pragma_strict_mode
config_rtl -reset none
csynth_design
file copy -force ./${hash}_${mode}/${hash}_${mode}_f${freq}/syn/report/csynth.rpt ../reports/csynth_${hash}_${mode}_f${freq}.rpt
close_solution
close_project
exit
