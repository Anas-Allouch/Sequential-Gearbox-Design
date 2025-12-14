function res = shear( Sy, T, d, z, l, h, t )
    n_eff = 0.3*z;
    F = 2*T/(d*0.001*n_eff);
    sig = F/(t*l);
    res = 0.3*Sy/sig;
end

