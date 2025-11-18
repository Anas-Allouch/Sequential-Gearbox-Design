clear all
clc
Sy  = 1140; % in [MPa]
T   = 1457.1; % in [Nm]
d   = 0.05; % in [m]
t   = 10; % in [mm]
l   = 20; % in [mm]
n   = [Shear_SF(Sy, T, t, l, d) Crushing_SF(Sy, T, t, l, d)]
