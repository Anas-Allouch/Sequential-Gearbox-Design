function res = Shear_SF( Sy, T, d, b, l , t )
    F           = 2*T/d;

    tau_key   = F/(b*l);
    tau_allow   = 0.3*Sy;
    res         = tau_allow/tau_key;
end

