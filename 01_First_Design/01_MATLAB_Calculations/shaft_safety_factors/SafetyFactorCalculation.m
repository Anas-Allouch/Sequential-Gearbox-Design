function res = SafetyFactorCalculation( Sut, Syt, Ma, Mm, Ta, Tm, d, za, r, kt, kts )
Sut         = Sut * 1000000;
Sut_MPa     = Sut * (0.000001);
Sut_Kpsi    = Sut_MPa * 0.145038;
Syt         = Syt * 1000000;
Syt_MPa     = Syt * (0.000001);
Ssy         = 0.557 * Syt;
Ssy_MPa     = Ssy * (0.000001);
Ssu         = 0.67 * Sut;

a   = 1.58;
b   =  -0.085;
ka  = SurfaceFact_ka( Sut/1000000, a, b );

kb  = SizeFact_kb( d );

kc = 1;

T   = 500;
kd  = TemperatureFact_kd( T );

ke = ReliabilityFact_ke( za );

kf = 1;

Se      = EnduranceLimitModFact_Se( Sut, ka, kb, kc, kd, ke, kf);
Se_MPa  = Se * (0.000001);

r_inch      = r * 0.0393701;
kf          = StressConFact_kf( Sut_Kpsi, 'bending', r_inch, kt, kts );
kfs         = StressConFact_kf( Sut_Kpsi, 'torsion', r_inch, kt, kts );

A = sqrt(4*((kf*Ma*1000)^2)+3*((kfs*Ta*1000)^2));
B = sqrt(4*((kf*Mm*1000)^2)+3*((kfs*Tm*1000)^2));

sig_a   = Stress( kf, Ma, d );
sig_m   = Stress( kf, Mm, d );
tau_a   = Shear( kfs, Ta, d );
tau_m   = Shear( kfs, Tm, d );

n_Goodman       = SafFactGoodman( Se_MPa, Sut_MPa, A, B, d );
n_Gerber        = SafFactGerber( Se_MPa, Sut_MPa, d, A, B );
n_ASMEelliptic  = SafFactASME( Se_MPa, Ssy_MPa, d, kf, kfs, Ma*1000, Mm*1000, Ta*1000, Tm*1000 );
n_Soderberg     = SafFactSoderberg( Se_MPa, Syt_MPa, d, A, B );

res = [n_Goodman, n_Gerber, n_ASMEelliptic, n_Soderberg];

end

