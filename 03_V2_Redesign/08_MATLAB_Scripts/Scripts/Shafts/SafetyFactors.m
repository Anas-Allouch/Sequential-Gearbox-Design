function n = SafetyFactors( Sut, Sy, Mmax, Tmax, d, r, kt, kts )
    Ma  = Mmax;
    Mm  = 0;
    Ta  = 0;
    Tm  = Tmax;
    n   = SafetyFactorCalculation( Sut, Sy, Ma, Mm, Ta, Tm, d, 1.645, r, kt, kts );
end

