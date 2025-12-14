%% Gear 1
clear all
clc
W           = 12244.9; % in [N]
Q           = 10;
zin         = 21;
zout        = 68;
b           = 35;
m           = 3.5;
BtoB        = 327; % bearingtobearing
GfC         = (327/2)-97.08; % gearfromcenter
Yj          = 0.34;
hardness    = 600;
grade       = 2;
cycles_in   = 1.485*(10^7);
reliability = 0.9;
Ein         = 205000; % in [MPa]
Eout        = 205000; % in [MPa]
poisson_in  = 0.29;
poisson_out = 0.29;
din         = zin*m;
dout        = zout*m;
n           = 5500;
ratio       = 3.2;
cycles_out  = cycles_in/ratio;

SF_bending_inputgear    = BendingSafetyFactor( W, Q, din, b, zin, n, m, BtoB, GfC, Yj, hardness, grade, cycles_in, reliability )
SF_bending_outputgear   = BendingSafetyFactor( W, Q, dout, b, zout, n/ratio, m, BtoB, GfC, Yj, hardness, grade, cycles_out, reliability )

SH_Contact_inputgear    = ContactSafetyFactor( Ein, Eout, poisson_in, poisson_out, Q, W, din, din, b, zin, n, ratio, BtoB, GfC, cycles_in, reliability, hardness, grade )
SH_Contact_outputgear   = ContactSafetyFactor( Ein, Eout, poisson_in, poisson_out, Q, W, dout, din, b, zout, n/ratio, ratio, BtoB, GfC, cycles_out, reliability, hardness, grade )


%% reverse
clear all
clc
W           = 12857.1; % in [N]
Q           = 10;
zin         = 20;
zout        = 61;
b           = 35;
m           = 3.5;
BtoB        = 327; % bearingtobearing
GfC         = (327/2)-38.23; % gearfromcenter
Yj          = 0.335;
hardness    = 600;
grade       = 2;
cycles_in   = 10^5;
reliability = 0.9;
Ein         = 205000; % in [MPa]
Eout        = 205000; % in [MPa]
poisson_in  = 0.29;
poisson_out = 0.29;
din         = zin*m;
dout        = zout*m;
n           = 3000;
ratio       = 3.05;
cycles_out  = cycles_in/ratio;

SF_bending_inputgear    = BendingSafetyFactor( W, Q, din, b, zin, n, m, BtoB, GfC, Yj, hardness, grade, cycles_in, reliability )
SF_bending_outputgear   = BendingSafetyFactor( W, Q, dout, b, zout, n/ratio, m, BtoB, GfC, Yj, hardness, grade, cycles_out, reliability )

SH_Contact_inputgear    = ContactSafetyFactor( Ein, Eout, poisson_in, poisson_out, Q, W, din, din, b, zin, n, ratio, BtoB, GfC, cycles_in, reliability, hardness, grade )
SH_Contact_outputgear   = ContactSafetyFactor( Ein, Eout, poisson_in, poisson_out, Q, W, dout, din, b, zout, n/ratio, ratio, BtoB, GfC, cycles_out, reliability, hardness, grade )
%% Gear 2
clear all
clc
W           = 10714.3; % in [N]
Q           = 10;
zin         = 24;
zout        = 65;
b           = 35;
m           = 3.5;
BtoB        = 327; % bearingtobearing
GfC         = abs((327/2)-134); % gearfromcenter
Yj          = 0.36;
hardness    = 600;
grade       = 2;
cycles_in   = 2.97*(10^7);
reliability = 0.9;
Ein         = 205000; % in [MPa]
Eout        = 205000; % in [MPa]
poisson_in  = 0.29;
poisson_out = 0.29;
din         = zin*m;
dout        = zout*m;
n           = 5500;
ratio       = 2.7083;
cycles_out  = cycles_in/ratio;

SF_bending_inputgear    = BendingSafetyFactor( W, Q, din, b, zin, n, m, BtoB, GfC, Yj, hardness, grade, cycles_in, reliability )
SF_bending_outputgear   = BendingSafetyFactor( W, Q, dout, b, zout, n/ratio, m, BtoB, GfC, Yj, hardness, grade, cycles_out, reliability )

SH_Contact_inputgear    = ContactSafetyFactor( Ein, Eout, poisson_in, poisson_out, Q, W, din, din, b, zin, n, ratio, BtoB, GfC, cycles_in, reliability, hardness, grade )
SH_Contact_outputgear   = ContactSafetyFactor( Ein, Eout, poisson_in, poisson_out, Q, W, dout, din, b, zout, n/ratio, ratio, BtoB, GfC, cycles_out, reliability, hardness, grade )
%% Gear 3
clear all
clc
W           = 9183.67; % in [N]
Q           = 10;
zin         = 28;
zout        = 61;
b           = 35;
m           = 3.5;
BtoB        = 327; % bearingtobearing
GfC         = abs((327/2)-193); % gearfromcenter
Yj          = 0.378;
hardness    = 600;
grade       = 2;
cycles_in   = 4.455*(10^7);
reliability = 0.9;
Ein         = 205000; % in [MPa]
Eout        = 205000; % in [MPa]
poisson_in  = 0.29;
poisson_out = 0.29;
din         = zin*m;
dout        = zout*m;
n           = 5500;
ratio       = 2.1786;
cycles_out  = cycles_in/ratio;

SF_bending_inputgear    = BendingSafetyFactor( W, Q, din, b, zin, n, m, BtoB, GfC, Yj, hardness, grade, cycles_in, reliability )
SF_bending_outputgear   = BendingSafetyFactor( W, Q, dout, b, zout, n/ratio, m, BtoB, GfC, Yj, hardness, grade, cycles_out, reliability )

SH_Contact_inputgear    = ContactSafetyFactor( Ein, Eout, poisson_in, poisson_out, Q, W, din, din, b, zin, n, ratio, BtoB, GfC, cycles_in, reliability, hardness, grade )
SH_Contact_outputgear   = ContactSafetyFactor( Ein, Eout, poisson_in, poisson_out, Q, W, dout, din, b, zout, n/ratio, ratio, BtoB, GfC, cycles_out, reliability, hardness, grade )
%% Gear 4
clear all
clc
W           = 7792.21; % in [N]
Q           = 10;
zin         = 33;
zout        = 56;
b           = 35;
m           = 3.5;
BtoB        = 327; % bearingtobearing
GfC         = abs((327/2)-229.93); % gearfromcenter
Yj          = 0.391;
hardness    = 600;
grade       = 2;
cycles_in   = 3.7125*(10^7);
reliability = 0.9;
Ein         = 205000; % in [MPa]
Eout        = 205000; % in [MPa]
poisson_in  = 0.29;
poisson_out = 0.29;
din         = zin*m;
dout        = zout*m;
n           = 5500;
ratio       = 1.697;
cycles_out  = cycles_in/ratio;

SF_bending_inputgear    = BendingSafetyFactor( W, Q, din, b, zin, n, m, BtoB, GfC, Yj, hardness, grade, cycles_in, reliability )
SF_bending_outputgear   = BendingSafetyFactor( W, Q, dout, b, zout, n/ratio, m, BtoB, GfC, Yj, hardness, grade, cycles_out, reliability )

SH_Contact_inputgear    = ContactSafetyFactor( Ein, Eout, poisson_in, poisson_out, Q, W, din, din, b, zin, n, ratio, BtoB, GfC, cycles_in, reliability, hardness, grade )
SH_Contact_outputgear   = ContactSafetyFactor( Ein, Eout, poisson_in, poisson_out, Q, W, dout, din, b, zout, n/ratio, ratio, BtoB, GfC, cycles_out, reliability, hardness, grade )
%% Gear 5
clear all
clc
W           = 6271.78; % in [N]
Q           = 10;
zin         = 41;
zout        = 48;
b           = 35;
m           = 3.5;
BtoB        = 327; % bearingtobearing
GfC         = abs((327/2)-288.78); % gearfromcenter
Yj          = 0.408;
hardness    = 600;
grade       = 2;
cycles_in   = 2.2275*(10^7);
reliability = 0.9;
Ein         = 205000; % in [MPa]
Eout        = 205000; % in [MPa]
poisson_in  = 0.29;
poisson_out = 0.29;
din         = zin*m;
dout        = zout*m;
n           = 5500;
ratio       = 1.1707;
cycles_out  = cycles_in/ratio;

SF_bending_inputgear    = BendingSafetyFactor( W, Q, din, b, zin, n, m, BtoB, GfC, Yj, hardness, grade, cycles_in, reliability )
SF_bending_outputgear   = BendingSafetyFactor( W, Q, dout, b, zout, n/ratio, m, BtoB, GfC, Yj, hardness, grade, cycles_out, reliability )

SH_Contact_inputgear    = ContactSafetyFactor( Ein, Eout, poisson_in, poisson_out, Q, W, din, din, b, zin, n, ratio, BtoB, GfC, cycles_in, reliability, hardness, grade )
SH_Contact_outputgear   = ContactSafetyFactor( Ein, Eout, poisson_in, poisson_out, Q, W, dout, din, b, zout, n/ratio, ratio, BtoB, GfC, cycles_out, reliability, hardness, grade )

%% Redesign gear 1
clear all
clc
T           = 450; % in [Nm]
Q           = 10;
zin         = 25;
zout        = 63;
m           = 3;
W           = 11276;
b           = 40;
BtoB        = 250; % bearingtobearing
GfC         = (250/2)-80; % gearfromcenter
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
