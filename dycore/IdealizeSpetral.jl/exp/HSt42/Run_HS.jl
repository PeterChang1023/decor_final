using JGCM

include("HS.jl")

#############################################################
end_day = 3
spinup_day = 0

physics_params = Dict{String,Float64}("σ_b"=>0.7, "k_f" => 1.0, "k_a" => 1.0/40.0, "k_s" => 1.0/4.0, "ΔT_y" => 60.0, "Δθ_z" => 10.0)
op_man = Atmos_Spectral_Dynamics_Main(physics_params, end_day, spinup_day)
# Finalize_Output!(op_man, "RH50_500_100_final.dat", "RH50_500_100.dat")
# Finalize_Output!(op_man, "HS_front_RH80_PR0_PRRELAX86400_with_w_all_final.dat", "HS_front_RH80_PR0_PRRELAX86400_with_w_all.dat")

# Finalize_Output!(op_man, "RH80_test_f0_final.dat", "RH80_test_f0_all.dat")
Finalize_Output!(op_man, "RH50_test_f0_final2.dat", "RH50_test_f0_all2.dat")



# Sigma_Zonal_Mean_Contourf(op_man, "Contourf")

"""
try 6 hour output end_day = 300, spinup = 100
WARNING:
remember to edit initial field before run the model!!!


day0_500: end_day = 500, spinup = 100

day501_1000: end_day = 500, spinup = 0

day1001_1500: end_day = 500, spinup = 0

day1501_2000: end_day = 500, spinup = 0

"""






