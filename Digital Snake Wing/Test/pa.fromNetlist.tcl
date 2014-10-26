
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name Test -dir "D:/GitHub/VHDL_Modules/Digital Snake Wing/Test/planAhead_run_1" -part xc3s500evq100-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/GitHub/VHDL_Modules/Digital Snake Wing/Test/Test.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/GitHub/VHDL_Modules/Digital Snake Wing/Test} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "Test.ucf" [current_fileset -constrset]
add_files [list {Test.ucf}] -fileset [get_property constrset [current_run]]
link_design
