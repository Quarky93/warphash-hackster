set hash [lindex $argv 0]
set mode [lindex $argv 1]
set freq [lindex $argv 2]
set top ${hash}_${mode}

open_checkpoint ../build/ooc_synth_${top}_f${freq}.dcp
opt_design
place_design
phys_opt_design
route_design
phys_opt_design
report_utilization -file ../reports/ooc_impl_${top}_f${freq}_utilization.rpt -hierarchical
report_timing_summary -file ../reports/ooc_impl_${top}_f${freq}_timing.rpt
write_checkpoint -force ../build/ooc_impl_${top}_f${freq}.dcp
