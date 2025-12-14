%% input shaft
clear all
clc
af              = 1.1; % load factor table 11-5
L10             = 10^6;
desired_life    = 667; % in [hours]
R               = 0.9;
F_tr            = [12000 9677.419 8108.108 7317.073 6122.449];
Fa              = [0 0 0 0 0];
t_fraction      = [0.1 0.2 0.2 0.25 0.25];
rot_speed       = [4000 4000 4000 4000 4000];

[Peq, neq]      = VarLoadEq(F_tr, Fa, t_fraction, rot_speed);
x               = DimensionlessDesignLife_x(desired_life, neq, L10);
C10             = Rating_C10( Peq, x, af, R );
disp(C10);

%% output shaft
clear all
clc
af              = 1.1; % load factor table 11-5
L10             = 10^6;
desired_life    = 667; % in [hours]
R               = 0.9;
F_tr            = [12000 9677.419 8108.108 7317.073 6122.449];
Fa              = [0 0 0 0 0];
t_fraction      = [0.1 0.2 0.2 0.25 0.25];
ratios          = [2.52 1.8387 1.378 1.1463 0.7959];
rot_speed       = [4000 4000 4000 4000 4000];
rot_speed_out   = rot_speed./ratios;

[Peq, neq]      = VarLoadEq(F_tr, Fa, t_fraction, rot_speed_out);
x               = DimensionlessDesignLife_x(desired_life, neq, L10);
C10             = Rating_C10( Peq, x, af, R );
disp(C10);