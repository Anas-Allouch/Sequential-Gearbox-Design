%% input shaft gear 1 + reverse gear
clear all
clc
Sy_shaft = 1140;
Sy_hub = 820;
Sy_key = 710;
T = 450;
d = 0.04;
% d = 0.05;
l = 30;
b = 10;
h = 8;
t1 = 0.4*h; % height in shaft
t2 = 0.6*h; % height in hub
SF_shear = Shear_SF( Sy_key, T, d, b, l , h );
[crushing_shaft, crushing_gear] = Crushing_SF( Sy_shaft, Sy_hub, T, d, b, l, t1, t2 );
disp('shear = ')
disp(SF_shear)
disp('crushing shaft = ')
disp(crushing_shaft)
disp('crushing gear = ')
disp(crushing_gear)

%% input shaft gear 2
clear all
clc
Sy_shaft = 1140;
Sy_hub = 820;
Sy_key = 710;
T = 450;
d = 0.055;
l = 20;
b = 10;
h = 8;
t1 = 0.4*h; % height in shaft
t2 = 0.6*h; % height in hub
SF_shear = Shear_SF( Sy_key, T, d, b, l , h );
[crushing_shaft, crushing_gear] = Crushing_SF( Sy_shaft, Sy_hub, T, d, b, l, t1, t2 );
disp('shear = ')
disp(SF_shear)
disp('crushing shaft = ')
disp(crushing_shaft)
disp('crushing gear = ')
disp(crushing_gear)

%% input shaft gear 3 + gear 4
clear all
clc
Sy_shaft = 1140;
Sy_hub = 820;
Sy_key = 710;
T = 450;
d = 0.055;
%d = 0.05;
l = 20;
b = 10;
h = 8;
t1 = 0.4*h; % height in shaft
t2 = 0.6*h; % height in hub
SF_shear = Shear_SF( Sy_key, T, d, b, l , h );
[crushing_shaft, crushing_gear] = Crushing_SF( Sy_shaft, Sy_hub, T, d, b, l, t1, t2 );
disp('shear = ')
disp(SF_shear)
disp('crushing shaft = ')
disp(crushing_shaft)
disp('crushing gear = ')
disp(crushing_gear)

%% intput shaft coupling key
clear all
clc
Sy_shaft = 1140;
Sy_hub = 750; % 42CrMo
Sy_key = 710;
T = 450;
d = 0.025;
l = 30;
b = 10;
h = 8;
t1 = 0.4*h; % height in shaft
t2 = 0.6*h; % height in hub
SF_shear = Shear_SF( Sy_key, T, d, b, l , h );
[crushing_shaft, crushing_gear] = Crushing_SF( Sy_shaft, Sy_hub, T, d, b, l, t1, t2 );
disp('shear = ')
disp(SF_shear)
disp('crushing shaft = ')
disp(crushing_shaft)
disp('crushing gear = ')
disp(crushing_gear)
