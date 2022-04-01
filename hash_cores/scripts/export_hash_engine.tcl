set freq [lindex $argv 2]

open_project hash_engine

set_top hash_engine
open_solution "hash_engine_f${freq}" -flow_target vivado
export_design -format ip_catalog
close_solution
close_project
exit
