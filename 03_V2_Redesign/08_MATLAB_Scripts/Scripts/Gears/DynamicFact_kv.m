function res = DynamicFact_kv( Q, d, n )
    d_m = d * 0.001;
    B   = 0.25 * (12 - Q)^(2/3);
    A   = 50 + 56*(1 - B);
    v   = (pi * d_m * n)/60;
    res = ((A+sqrt(200*v))/A)^B;
end