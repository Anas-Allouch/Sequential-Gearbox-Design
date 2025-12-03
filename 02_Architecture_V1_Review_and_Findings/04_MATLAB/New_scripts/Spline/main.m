%% output spline
clear all
clc
Sy = 1140;
T = 1457;
m = 1.5; % module
l = 25;
b = 2.356;
h = 1.5;
z = 25;
d = z*m;
d = d*0.001;

F = 2*T/d;
neff = 0.3*z; % 0.25-0.35*z, load distribution

tau_allow_crushing = 0.6*Sy;
tau_crushing = F/(neff*h*l);
tau_allow_shear = 0.3*Sy;
tau_shear = F/(neff*b*l);

SF_crushing = tau_allow_crushing/tau_crushing;
SF_shear = tau_allow_shear/tau_shear;
disp('SF shear = ')
disp(SF_shear)
disp('SF crushing = ')
disp(SF_crushing)

%% input spline
clear all
clc
Sy = 1140;
T = 450;
m = 1.5; % module
l = 10;
b = 2.356;
h = 1.5;
z = 25;
d = z*m;
d = d*0.001;

F = 2*T/d;
neff = 0.3*z; % 0.25-0.35*z, load distribution

tau_allow_crushing = 0.6*Sy;
tau_crushing = F/(neff*h*l);
tau_allow_shear = 0.3*Sy;
tau_shear = F/(neff*b*l);

SF_crushing = tau_allow_crushing/tau_crushing;
SF_shear = tau_allow_shear/tau_shear;
disp('SF shear = ')
disp(SF_shear)
disp('SF crushing = ')
disp(SF_crushing)