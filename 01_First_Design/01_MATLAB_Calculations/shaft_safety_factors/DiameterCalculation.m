function diameters = DiameterCalculation( Sut, Syt, Ma, Mm, Ta, Tm, n, d, za, r, kt, kts )
% first assumption:
% kb = 0.9
% kd = ke = kf = 1
% kf = kt; table 7-1
% kfs = kts; table 7-1

Sut         = Sut * 1000000; % [MPa]
Sut_MPa     = Sut * (0.000001);
Sut_Kpsi    = Sut_MPa * 0.145038;
Syt         = Syt * 1000000; % [MPa]
Ssy         = 0.557 * Syt; % [MPa] % Ssy = 0.557*Syt book page 348
Ssu         = 0.67 * Sut;

% Se, endurance limit modified fact parameters: ka, kb, kc, kd, ke, kf, Se'
% ka, 2 parameters a and b, shaft's surface finish is machined
a   = 1.58; % table 6-2
b   = -0.085; % table 6-2
ka  = SurfaceFact_ka( Sut_MPa, a, b ); % Sut in [MPa]

% kb, needs diameter size
kb  = SizeFact_kb( d );

% kc, depends on load type bending, axial or torsion
kc = 1; % it is already implimented in the final form of the diam formulas

% kd, depends on functioning temperature
T   = 500; % functioning temperature [fahrenheit]
kd  = TemperatureFact_kd( T );

% ke, depends on reliability
% za = 2.326; % table 6-5
ke = ReliabilityFact_ke( za );

% kf, will be set to 1 in all analysis, for more information shigley 10th
% edition part 6-9
kf = 1;

Se = EnduranceLimitModFact_Se( Sut, ka, kb, kc, kd, ke, kf);

% kf, kfs, stress concentration and notch sensitivity, shigley part 6-10,
% needs kt, kts, q, qshear, notch radius, D and d which are the two
% different diameters of shaft next to each other
% as first assumption we can take kf = kt, kfs = kts; table 7-1

% r           = 0.02 * d; % notch radius [mm], table 7-1
r_inch      = r * 0.0393701;
% kt          = 2.7; % fig A_15_9
% kts         = 2.2; % fig A_15_8
kf          = StressConFact_kf( Sut_Kpsi, 'bending', r_inch, kt, kts );
kfs         = StressConFact_kf( Sut_Kpsi, 'torsion', r_inch, kt, kts );

A = sqrt(4*((kf*Ma)^2)+3*((kfs*Ta)^2));
B = sqrt(4*((kf*Mm)^2)+3*((kfs*Tm)^2));

% diameter size
diam_Goodman        = DiameterGoodman( Se, Sut, n, A, B );
diam_Gerber         = DiameterGerber( Se, Sut, n, A, B );
diam_ASMEelliptic   = DiameterASMEelliptic( Se, Ssy, n, Ma, Mm, Ta, Tm, kf, kfs );
diam_Soderberg      = DiameterSoderberg( Se, Syt, n, A, B );

diameters = [diam_Goodman, diam_Gerber, diam_ASMEelliptic, diam_Soderberg];
end

