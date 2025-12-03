%% reverse + gear 1
clear all
clc
Sy = 786; % 800 because the dog collar will not be heat treated, 18CrNiMo7-6 as it is
z = 6;
T = 1457;
diameter_gear = 238;
diameter_dogs = 160;
dog_engagement_height = 7; % axial
dog_thickness = 20; % radial
dog_length = 15; % tangential

SF_crushing = crushing( Sy, T, diameter_dogs, z, dog_length, dog_engagement_height, dog_thickness )
SF_shear = shear( Sy, T, diameter_dogs, z, dog_length, dog_engagement_height, dog_thickness )

%% gear 2 + gear 3
clear all
clc
Sy = 786;
z = 6;
T = 1218.7;
diameter_gear = 213.5;
diameter_dogs = 140;
dog_engagement_height = 7; % axial
dog_thickness = 20; % radial
dog_length = 15; % tangential

SF_crushing = crushing( Sy, T, diameter_dogs, z, dog_length, dog_engagement_height, dog_thickness )
SF_shear = shear( Sy, T, diameter_dogs, z, dog_length, dog_engagement_height, dog_thickness )

%% gear 4 + gear 5
clear all
clc
Sy = 786;
z = 6;
T = 763.65;
diameter_gear = 168;
diameter_dogs = 117.5;
dog_engagement_height = 7; % axial
dog_thickness = 15; % radial
dog_length = 15; % tangential

SF_crushing = crushing( Sy, T, diameter_dogs, z, dog_length, dog_engagement_height, dog_thickness )
SF_shear = shear( Sy, T, diameter_dogs, z, dog_length, dog_engagement_height, dog_thickness )