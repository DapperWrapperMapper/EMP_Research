using PowerModels
using Ipopt

"""
Loads a PowerModel modules and performes calculations
"""

function m_loader(filepath, powermodel)
    # Load the data from a file path, initialise the model, return it
    network_data = PowerModels.parse_file(filepath)
    instantiate_model(network_data, powermodel=ACPPowerModel, PowerModels.build_opf)
    return network_data

function create_template(networkmodel, paramdict)
    networkmodel[bus][type] = value
    datadict = dict(paramdict)
    
    # Accept a dictionary, and apply a transformation to our networkmodel
    # Not sure of the syntax, but some index comparison / setting will take place

    for bus, type in networkmodel, bus[type] = datadict

    return datadict

function save_instance(model, savepath)
   


function project_function_test(x, y)
    return x + y
end
