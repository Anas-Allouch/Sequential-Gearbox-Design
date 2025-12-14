function res = crushing( Sy, T, d, z, l, h, t )
    n_eff = 0.3*z;
    F = 2*T/(d*0.001*n_eff);
    sig = F/(t*h);
    res = 0.6*Sy/sig;
end

