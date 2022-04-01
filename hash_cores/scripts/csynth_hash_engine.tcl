set freq [lindex $argv 2]
set tune [lindex $argv 3]

open_project hash_engine -reset

add_files ../include/hw/warphash.h
add_files ../src/hw/shell/hash_engine.cpp -cflags "-I../include/hw/"

set_top hash_engine
open_solution "hash_engine_f${freq}" -flow_target vivado -reset
set_part {xcvu33p-fsvh2104-2-e}
create_clock -period ${freq}MHz -name default
if {${tune} != ""} {
	set_clock_uncertainty ${tune} default
}
config_compile -pragma_strict_mode
csynth_design
file copy -force ./hash_engine/hash_engine_f${freq}/syn/report/csynth.rpt ../reports/csynth_hash_engine_f${freq}.rpt
close_solution
close_project
exit
