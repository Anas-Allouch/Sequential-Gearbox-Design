function res = StressConFact_kfs( Sut, r, kts )
    a = (0.190 - 2.51*(10^(-3))*Sut + 1.35*(10^(-5))*(Sut^2) - 2.67*(10^(-8))*(Sut^3))^2;
    q = 1/(1 + sqrt(a/r));
    res = 1 + q*(kts - 1);
end

