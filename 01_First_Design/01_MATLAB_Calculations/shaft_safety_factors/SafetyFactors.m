function n = SafetyFactors( Sut, Sy, Mmax, Tmax, d, r, kt, kts, flag )
if flag == 0
    Ma  = Mmax;
    Mm  = 0;
    Ta  = 0;
    Tm  = Tmax;
end
if flag == 1
    Ma  = Mmax/2;
    Mm  = Mmax/2;
    Ta  = Tmax/2;
    Tm  = Tmax/2;
end

n   = SafetyFactorCalculation( Sut, Sy, Ma, Mm, Ta, Tm, d, 1.645, r, kt, kts );
end

