%% output spline rev - gear 1
clear all
clc
Sy = 785;
T = 450*2.52;
m = 3; % module
l = 8;
z = 18;
h = 0.45*m + 0.65*m;
d = z*m;
b = pi*d/(2*z);
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

%% output spline
clear all
clc
Sy = 1140;
T = 450*2.52;
m = 3; % module
l = 25;
z = 12;
h = 0.45*m + 0.65*m;
d = z*m;
b = pi*d/(2*z);
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

%% input gear 5
clear all
clc
Sy = 820; % gear is weaker
T = 450;
m = 3; % module
l = 20;
z = 15;
h = 0.45*m + 0.55*m;
d = z*m;
b = pi*d/(2*z);
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

%% dog ring sleeve
clear all
clc
Sy = 785;
ratio = 1.8387; % gear 2 has the highest ratio, thus the most critical
T = 450*ratio;
m = 3; % module
l = 8;
z = 25;
h = 0.45*m + 0.55*m;
d = z*m;
b = pi*d/(2*z);
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