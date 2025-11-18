%% input shaft

af              = 1.1; % load factor table 11-5
L10             = 10^6;
desired_life    = 450; % in [hours]
R               = 0.9;
F_tr            = [13030.75 11240.73 9773.057 8292.296 6672.288];
Fa              = [0 0 0 0 0];
t_fraction      = [0.1 0.2 0.3 0.25 0.15];
rot_speed       = [5500 5500 5500 5500 5500];

[Peq, neq]      = VarLoadEq(F_tr, Fa, t_fraction, rot_speed);
x               = DimensionlessDesignLife_x(desired_life, neq, L10);
C10             = Rating_C10( Peq, x, af, R );
disp(C10);

%% output shaft
clear all
clc
af              = 1.1; % load factor table 11-5
L10             = 10^6;
desired_life    = 500; % in [hours]
R               = 0.9;
F_tr            = [13030.75 11240.73 9773.057 8292.296 6672.288];
Fa              = [0 0 0 0 0];
t_fraction      = [0.1 0.2 0.3 0.25 0.15];
rot_speed_in    = [5500 5500 5500 5500 5500];
ratios          = [3.238 2.7083 2.1786 1.697 1.1707];
rot_speed_out   = rot_speed_in.*(1./ratios);
[Peq, neq]      = VarLoadEq(F_tr, Fa, t_fraction, rot_speed_out);
x               = DimensionlessDesignLife_x(desired_life, neq, L10);
C10             = Rating_C10( Peq, x, af, R );
disp(C10);