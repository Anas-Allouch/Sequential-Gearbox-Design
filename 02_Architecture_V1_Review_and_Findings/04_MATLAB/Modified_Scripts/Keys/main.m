%% output shaft - reverse + gear 1
clear all
clc
Sy_shaft = 1140;
Sy_hub = 1140;
Sy_key = 1140;
T = 1457;
d = 0.05;
l = 20;
b = 12;
h = 14;
t1 = 0.4*h;
t2 = 0.6*h;
SF_shear = Shear_SF( Sy_key, T, d, b, l , h );
[crushing_shaft, crushing_gear] = Crushing_SF( Sy_shaft, Sy_hub, T, d, b, l, t1, t2 );
disp('shear = ')
disp(SF_shear)
disp('crushing shaft = ')
disp(crushing_shaft)
disp('crushing gear = ')
disp(crushing_gear)

%% output shaft - gear 2 + gear 3
clear all
clc
Sy_shaft = 1140;
Sy_hub = 1140;
Sy_key = 1140;
T = 1218.7;
d = 0.07;
l = 10;
b = 12;
h = 14;
t1 = 0.5*h;
t2 = 0.5*h;
SF_shear = Shear_SF( Sy_key, T, d, b, l , h );
[crushing_shaft, crushing_gear] = Crushing_SF( Sy_shaft, Sy_hub, T, d, b, l, t1, t2 );
disp('shear = ')
disp(SF_shear)
disp('crushing shaft = ')
disp(crushing_shaft)
disp('crushing gear = ')
disp(crushing_gear)

%% output shaft - gear 4 + gear 5
clear all
clc
Sy_shaft = 1140;
Sy_hub = 1140;
Sy_key = 800;
T = 763.65;
d = 0.05;
l = 20;
b = 12;
h = 10;
t1 = 0.4*h;
t2 = 0.6*h;
SF_shear = Shear_SF( Sy_key, T, d, b, l , h );
[crushing_shaft, crushing_gear] = Crushing_SF( Sy_shaft, Sy_hub, T, d, b, l, t1, t2 );
disp('shear = ')
disp(SF_shear)
disp('crushing shaft = ')
disp(crushing_shaft)
disp('crushing gear = ')
disp(crushing_gear)

%% input shaft
clear all
clc
Sy_shaft = 1140;
Sy_hub = 920;
Sy_key = 1140;
T = 450;
d = 0.05;
l = 25;
b = 8;
h = 10;
t1 = 0.5*h;
t2 = 0.5*h;
SF_shear = Shear_SF( Sy_key, T, d, b, l , h );
[crushing_shaft, crushing_gear] = Crushing_SF( Sy_shaft, Sy_hub, T, d, b, l, t1, t2 );
disp('shear = ')
disp(SF_shear)
disp('crushing shaft = ')
disp(crushing_shaft)
disp('crushing gear = ')
disp(crushing_gear)
