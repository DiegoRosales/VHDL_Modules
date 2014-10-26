
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name DACTest -dir "D:/GitHub/VHDL_Modules/CODEC Wing/DAC Test/DACTest/planAhead_run_1" -part xc3s500evq100-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/GitHub/VHDL_Modules/CODEC Wing/DAC Test/DACTest/Square_wave.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/GitHub/VHDL_Modules/CODEC Wing/DAC Test/DACTest} }
set_property target_constrs_file "Square_wave.ucf" [current_fileset -constrset]
add_files [list {Square_wave.ucf}] -fileset [get_property constrset [current_run]]
link_design
