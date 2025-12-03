function [SF_shaft, SF_hub] = Crushing_SF( Sy_shaft, Sy_hub, T, d, b, l, t_shaft, t_hub )
    F = 2*T/d;
    
    tau_shaft   = F/(t_shaft*l);
    tau_hub     = F/(t_hub*l);
    
    tau_allow_shaft = 0.6*Sy_shaft;
    tau_allow_hub   = 0.6*Sy_hub;
    
    SF_shaft    = tau_allow_shaft/tau_shaft;
    SF_hub      = tau_allow_hub/tau_hub;
end

