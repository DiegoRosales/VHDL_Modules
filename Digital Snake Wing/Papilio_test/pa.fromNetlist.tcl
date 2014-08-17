
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name Papilio_test -dir "D:/GitHub/VHDL_Modules/Papilio_test/planAhead_run_1" -part xc3s500evq100-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/GitHub/VHDL_Modules/Papilio_test/Test_blinky.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/GitHub/VHDL_Modules/Papilio_test} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "Test_blinky.ucf" [current_fileset -constrset]
add_files [list {Test_blinky.ucf}] -fileset [get_property constrset [current_run]]
link_design
