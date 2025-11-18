function res = StressConFact_kf( Sut, type, r, kt, kts )
    if isequal(type, 'bending')
        a = (0.246 - 3.08*(0.001)*Sut + 1.51*(0.00001)*(Sut^2) - 2.67*(0.00000001)*(Sut^3))^2;
    elseif isequal(type, 'torsion')
        a = (0.190 - 2.51*(10^(-3))*Sut + 1.35*(10^(-5))*(Sut^2) - 2.67*(10^(-8))*(Sut^3))^2;
    end
    q = 1/(1 + sqrt(a/r));
    kf = 1 + q*(kt - 1);
    kfs = 1 + q*(kts - 1);
    if isequal(type, 'bending')
        res = kf;
    elseif isequal(type, 'torsion')
        res = kfs;
    end
end