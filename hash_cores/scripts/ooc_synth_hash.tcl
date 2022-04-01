set hash [lindex $argv 0]
set mode [lindex $argv 1]
set freq [lindex $argv 2]
set directive [lindex $argv 3]
set top ${hash}_${mode}

create_project -in_memory -part xcvu33p-fsvh2104-2-e
read_verilog [ glob ../build/${top}/${top}_f${freq}/syn/verilog/*.v ]
read_mem -quiet [ glob -nocomplain ../build/${top}/${top}_f${freq}/syn/verilog/*.dat ]
read_xdc ../xdc/ooc_f${freq}.xdc

synth_design -top ${top} -directive ${directive} -mode out_of_context
report_utilization -file ../reports/ooc_synth_${top}_f${freq}_utilization.rpt -hierarchical
report_timing_summary -file ../reports/ooc_synth_${top}_f${freq}_timing.rpt
write_checkpoint -force ../build/ooc_synth_${top}_f${freq}.dcp
