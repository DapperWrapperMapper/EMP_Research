using PowerModels
using Ipopt

# A list of common functions we will be applying to our network model

function calc_voltage_from_event(networkmodel, params)
    dc_results = PowerModels.compute_dc_pf(networkmodel, params)
    return dc_results