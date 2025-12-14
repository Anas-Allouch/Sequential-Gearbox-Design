function res = ContactStress( Ein, Eout, poisson_in, poisson_out, Q, W, d, dp, b, z, n, ratio, bearingtobearing, gearfromcenter )
    Ze  = ElasticCoef_Ze( Ein, Eout, poisson_in, poisson_out );
    Y   = Lewis_Y(z);
    ko  = 1.25; % fig 14-18, moderate shock
    kv  = DynamicFact_kv( Q, d, n );
    ks  = SizeFact_ks( b, z, d, Y );
    KH  = LoadDistFact_kH( d, b, bearingtobearing, gearfromcenter );
    Zr  = 1; % section 14-9
    Zi  = GeomFactor_Zi( ratio );
    res = Ze*sqrt(W*ko*kv*ks*(KH/(dp*b))*(Zr/Zi));
end

