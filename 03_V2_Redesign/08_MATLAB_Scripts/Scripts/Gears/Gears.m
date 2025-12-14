%% Redesign gear 1
clear all
clc
T           = 450; % in [Nm]
Q           = 10;
zin         = 25;
zout        = 63;
m           = 3;
W           = 2*T/(0.001*zin*m);
b           = 40;
BtoB        = 302; % bearingtobearing
GfC         = (BtoB/2)-106; % gearfromcenter
Yj          = 0.365;
hardness    = 600;
grade       = 2;
cycles_in   = 1.6*(10^7);
reliability = 0.9;
Ein         = 205000; % in [MPa]
Eout        = 205000; % in [MPa]
poisson_in  = 0.29;
poisson_out = 0.29;
din         = zin*m;
dout        = zout*m;
n           = 4000;
ratio       = zout/zin;
cycles_out  = cycles_in/ratio;

SF_bending_inputgear    = BendingSafetyFactor( W, Q, din, b, zin, n, m, BtoB, GfC, Yj, hardness, grade, cycles_in, reliability )
SF_bending_outputgear   = BendingSafetyFactor( W, Q, dout, b, zout, n/ratio, m, BtoB, GfC, Yj, hardness, grade, cycles_out, reliability )

SH_Contact_inputgear    = ContactSafetyFactor( Ein, Eout, poisson_in, poisson_out, Q, W, din, din, b, zin, n, ratio, BtoB, GfC, cycles_in, reliability, hardness, grade )
SH_Contact_outputgear   = ContactSafetyFactor( Ein, Eout, poisson_in, poisson_out, Q, W, dout, din, b, zout, n/ratio, ratio, BtoB, GfC, cycles_out, reliability, hardness, grade )

%% Redesign gear 2
clear all
clc
T           = 450; % in [Nm]
Q           = 10;
zin         = 31;
zout        = 57;
m           = 3;
W           = 2*T/(0.001*m*zin);
b           = 30;
BtoB        = 302; % bearingtobearing
GfC         = (BtoB/2)-141; % gearfromcenter
Yj          = 0.388;
hardness    = 600;
grade       = 2;
cycles_in   = 3.2*(10^7);
reliability = 0.9;
Ein         = 205000; % in [MPa]
Eout        = 205000; % in [MPa]
poisson_in  = 0.29;
poisson_out = 0.29;
din         = zin*m;
dout        = zout*m;
n           = 4000;
ratio       = zout/zin;
cycles_out  = cycles_in/ratio;

SF_bending_inputgear    = BendingSafetyFactor( W, Q, din, b, zin, n, m, BtoB, GfC, Yj, hardness, grade, cycles_in, reliability )
SF_bending_outputgear   = BendingSafetyFactor( W, Q, dout, b, zout, n/ratio, m, BtoB, GfC, Yj, hardness, grade, cycles_out, reliability )

SH_Contact_inputgear    = ContactSafetyFactor( Ein, Eout, poisson_in, poisson_out, Q, W, din, din, b, zin, n, ratio, BtoB, GfC, cycles_in, reliability, hardness, grade )
SH_Contact_outputgear   = ContactSafetyFactor( Ein, Eout, poisson_in, poisson_out, Q, W, dout, din, b, zout, n/ratio, ratio, BtoB, GfC, cycles_out, reliability, hardness, grade )

%% Redesign gear 3
clear all
clc
T           = 450; % in [Nm]
Q           = 10;
zin         = 37;
zout        = 51;
m           = 3;
W           = 2*T/(0.001*m*zin);
b           = 25;
BtoB        = 302; % bearingtobearing
GfC         = 198-(BtoB/2); % gearfromcenter
Yj          = 0.402;
hardness    = 600;
grade       = 2;
cycles_in   = 3.2*(10^7);
reliability = 0.9;
Ein         = 205000; % in [MPa]
Eout        = 205000; % in [MPa]
poisson_in  = 0.29;
poisson_out = 0.29;
din         = zin*m;
dout        = zout*m;
n           = 4000;
ratio       = zout/zin;
cycles_out  = cycles_in/ratio;

SF_bending_inputgear    = BendingSafetyFactor( W, Q, din, b, zin, n, m, BtoB, GfC, Yj, hardness, grade, cycles_in, reliability )
SF_bending_outputgear   = BendingSafetyFactor( W, Q, dout, b, zout, n/ratio, m, BtoB, GfC, Yj, hardness, grade, cycles_out, reliability )

SH_Contact_inputgear    = ContactSafetyFactor( Ein, Eout, poisson_in, poisson_out, Q, W, din, din, b, zin, n, ratio, BtoB, GfC, cycles_in, reliability, hardness, grade )
SH_Contact_outputgear   = ContactSafetyFactor( Ein, Eout, poisson_in, poisson_out, Q, W, dout, din, b, zout, n/ratio, ratio, BtoB, GfC, cycles_out, reliability, hardness, grade )

%% Redesign gear 4
clear all
clc
T           = 450; % in [Nm]
Q           = 10;
zin         = 41;
zout        = 47;
m           = 3;
W           = 2*T/(0.001*m*zin);
b           = 25;
BtoB        = 302; % bearingtobearing
GfC         = (BtoB/2)-224; % gearfromcenter
Yj          = 0.408;
hardness    = 600;
grade       = 2;
cycles_in   = 4*(10^7);
reliability = 0.9;
Ein         = 205000; % in [MPa]
Eout        = 205000; % in [MPa]
poisson_in  = 0.29;
poisson_out = 0.29;
din         = zin*m;
dout        = zout*m;
n           = 4000;
ratio       = zout/zin;
cycles_out  = cycles_in/ratio;

SF_bending_inputgear    = BendingSafetyFactor( W, Q, din, b, zin, n, m, BtoB, GfC, Yj, hardness, grade, cycles_in, reliability )
SF_bending_outputgear   = BendingSafetyFactor( W, Q, dout, b, zout, n/ratio, m, BtoB, GfC, Yj, hardness, grade, cycles_out, reliability )

SH_Contact_inputgear    = ContactSafetyFactor( Ein, Eout, poisson_in, poisson_out, Q, W, din, din, b, zin, n, ratio, BtoB, GfC, cycles_in, reliability, hardness, grade )
SH_Contact_outputgear   = ContactSafetyFactor( Ein, Eout, poisson_in, poisson_out, Q, W, dout, din, b, zout, n/ratio, ratio, BtoB, GfC, cycles_out, reliability, hardness, grade )

%% Redesign gear 5
clear all
clc
T           = 450; % in [Nm]
Q           = 10;
zin         = 49;
zout        = 39;
m           = 3;
W           = 2*T/(0.001*m*zin);
b           = 20;
BtoB        = 302; % bearingtobearing
GfC         = 276-(BtoB/2); % gearfromcenter
Yj          = 0.418;
hardness    = 600;
grade       = 2;
cycles_in   = 4*(10^7);
reliability = 0.9;
Ein         = 205000; % in [MPa]
Eout        = 205000; % in [MPa]
poisson_in  = 0.29;
poisson_out = 0.29;
din         = zin*m;
dout        = zout*m;
n           = 4000;
ratio       = zout/zin;
cycles_out  = cycles_in/ratio;

SF_bending_inputgear    = BendingSafetyFactor( W, Q, din, b, zin, n, m, BtoB, GfC, Yj, hardness, grade, cycles_in, reliability )
SF_bending_outputgear   = BendingSafetyFactor( W, Q, dout, b, zout, n/ratio, m, BtoB, GfC, Yj, hardness, grade, cycles_out, reliability )

SH_Contact_inputgear    = ContactSafetyFactor( Ein, Eout, poisson_in, poisson_out, Q, W, din, din, b, zin, n, ratio, BtoB, GfC, cycles_in, reliability, hardness, grade )
SH_Contact_outputgear   = ContactSafetyFactor( Ein, Eout, poisson_in, poisson_out, Q, W, dout, din, b, zout, n/ratio, ratio, BtoB, GfC, cycles_out, reliability, hardness, grade )

%% Redesign reverse gear
clear all
clc
T           = 450; % in [Nm]
Q           = 10;
zin         = 31;
zout        = 68;
m           = 2.5;
W           = 2*T/(m*zin*0.001);
b           = 40;
BtoB        = 302; % bearingtobearing
GfC         = (BtoB/2)-36; % gearfromcenter
Yj          = 0.388;
hardness    = 600;
grade       = 2;
cycles_in   = 1.2*(10^6);
reliability = 0.9;
Ein         = 205000; % in [MPa]
Eout        = 205000; % in [MPa]
poisson_in  = 0.29;
poisson_out = 0.29;
din         = zin*m;
dout        = zout*m;
n           = 3000;
ratio       = zout/zin;
cycles_out  = cycles_in/ratio;

SF_bending_inputgear    = BendingSafetyFactor( W, Q, din, b, zin, n, m, BtoB, GfC, Yj, hardness, grade, cycles_in, reliability )
SF_bending_outputgear   = BendingSafetyFactor( W, Q, dout, b, zout, n/ratio, m, BtoB, GfC, Yj, hardness, grade, cycles_out, reliability )

SH_Contact_inputgear    = ContactSafetyFactor( Ein, Eout, poisson_in, poisson_out, Q, W, din, din, b, zin, n, ratio, BtoB, GfC, cycles_in, reliability, hardness, grade )
SH_Contact_outputgear   = ContactSafetyFactor( Ein, Eout, poisson_in, poisson_out, Q, W, dout, din, b, zout, n/ratio, ratio, BtoB, GfC, cycles_out, reliability, hardness, grade )