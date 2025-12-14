function res = SizeFact_ks( b, z, d, Y )
    d_in    = d/25.4;
    b_in    = b/25.4;
    P       = z/d_in;
    res     = 1.192 * ((b_in*sqrt(Y))/P)^(0.0535);
end