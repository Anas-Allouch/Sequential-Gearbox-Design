function res = BendingStress( W, Q, d, b, z, n, m, bearingtobearing, gearfromcenter, Yj )
    Y   = Lewis_Y(z);
    ko  = 1.25; % fig 14-18, moderate shock
    kv  = DynamicFact_kv( Q, d, n );
    ks  = SizeFact_ks( b, z, d, Y );
    KH  = LoadDistFact_kH( d, b, bearingtobearing, gearfromcenter );
    KB  = 1; % rim thickness factor, assuming a constant thickness gear
    res = W*ko*kv*ks*(1/(b*m))*(KH*KB/Yj);
end

