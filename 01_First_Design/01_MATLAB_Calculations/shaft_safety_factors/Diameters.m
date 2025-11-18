% for the first iteration: kf = kt, kfs = kts, kb = 0.9, kc = 1 or 0.85 or
% 0.59 it depends
% kd = ke = kf = 1;

Sut = 68000; % [psi]
%Syt; % [psi]
%Sy; % [psi]
Ma = 3651; % [lbf.in]
Mm = 0;
Ta = 0;
Tm = 3240;
d= 1.65; % [in]
n = 1.5; % initial safety factor
T = 500; % functioning tmeperature used for kd [fahrenheit]
a = 2.7; % for ka book 313
b = -0.265; % for ka book 313
za = 1.645; % 2.326 % for ke book 317-318
r = 0.04; % notch radius [in]
kt = 1.7; % first assumption book 398, after that fig A_15_9 book 1053
kts = 1.5; % assumption book 398, after that fig A_15_8 book 1053
loading_type = 'bending'; % 'bending' or 'axial' or 'torsion'
Se = EnduranceLimitModFact_Se( Sut, loading_type, d, a, b, T, za );
% Se = 27000;
kf = StressConFact_kf( Sut, 'bending', r, kt, kts );
% kf = 1.7;
kfs = StressConFact_kf( Sut, 'torsion', r, kt, kts );
% kfs = 1.5;

A = sqrt(4*((kf*Ma)^2)+3*((kfs*Ta)^2));
B = sqrt(4*((kf*Mm)^2)+3*((kfs*Tm)^2));
diam_Goodman = DiameterGoodman( Se, Sut, n, A, B );
%diam_Gerber = DiameterGerber( A, B );
%diam_ASMEelliptic = DiameterASMEelliptic();
%diam_Soderberg = DiameterSoderberg( A, B );

d = diam_Goodman;
sig_a = Stress( kf, Ma, d );
sig_m = Stress( kf, Mm, d );
tau_a = Shear( kfs, Ta, d );
tau_m = Shear( kfs, Tm, d );
d
Se
%%
% we perform multiple iteration till we get 2 values of diameter that are
% the same, for safety factors we won't be using them cause i will be
% assuming one to calculate a diam for it, but i think that if we check the
% safety for the diameter i got would be better

sig_a_prime = sqrt(sig_a^2 + 3*(tau_a^2));
sig_m_prime = sqrt(sig_m^2 + 3*(tau_m^2));
saf_factor_Goodman = SafFactGoodman( Se, Sut, A, B, diam_Goodman );
saf_factor_Gerber = SafFactGerber( Se, Sut, diam_Gerber, A, B );
saf_factor_ASME = SafFactASME( Se, Sy, diam_ASMEelliptic, kf, kfs, Ma, Mm, Ta, Tm );
saf_factor_Soderberg = SafFactSoderberg( Se, Syt, diam_Soderberg, A, B );

