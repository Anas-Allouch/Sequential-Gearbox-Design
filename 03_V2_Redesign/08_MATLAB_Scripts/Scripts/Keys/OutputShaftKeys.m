%% output shaft - dog ring sleeve - gear 2 + gear 3
clear all
clc
Sy_shaft = 1140;
Sy_hub = 785; % 18CrNiMo7-6
Sy_key = 710; % AISI 4340 steel normalized
i = 1.8387;
T = 450*i;
d = 0.045;
l = 28;
b = 12;
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

%% output shaft - dog ring sleeve - gear 4 + gear 5
clear all
clc
Sy_shaft = 1140;
Sy_hub = 785;
Sy_key = 710;
i = 1.1463;
T = 450*i;
d = 0.04;
l = 26;
b = 12;
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
