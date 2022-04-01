set hash [lindex $argv 2]
set mode [lindex $argv 3]
set freq [lindex $argv 4]

open_project ${hash}_${mode}

set_top ${hash}_${mode}
open_solution "${hash}_${mode}_f${freq}" -flow_target vivado
export_design -format ip_catalog
close_solution
close_project
exit
