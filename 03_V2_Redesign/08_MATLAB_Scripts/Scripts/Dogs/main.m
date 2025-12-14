%% reverse + gear 1
clear all
clc
Sy = 785; % 785 because the dog collar will not be heat treated, 18CrNiMo7-6 as it is
z = 6;
ratio = 2.52;
T = 450*ratio;
diameter_gear = 163.7;
dog_engagement_height = 8; % axial
dog_thickness = 20; % radial
diameter_dogs = (diameter_gear+(diameter_gear-(2*dog_thickness)))/2;
dog_length = (20/diameter_dogs)*(180/pi); % tangential

SF_crushing = crushing( Sy, T, diameter_dogs, z, dog_length, dog_engagement_height, dog_thickness )
SF_shear = shear( Sy, T, diameter_dogs, z, dog_length, dog_engagement_height, dog_thickness )

%% gear 2 + gear 3
clear all
clc
Sy = 785;
z = 6;
ratio = 1.8387;
T = 450*ratio;
diameter_gear = 145.5;
dog_engagement_height = 8; % axial
dog_thickness = 10; % radial
diameter_dogs = (diameter_gear+(diameter_gear-(2*dog_thickness)))/2;
dog_length = (20/diameter_dogs)*(180/pi); % tangential

SF_crushing = crushing( Sy, T, diameter_dogs, z, dog_length, dog_engagement_height, dog_thickness )
SF_shear = shear( Sy, T, diameter_dogs, z, dog_length, dog_engagement_height, dog_thickness )

%% gear 4 + gear 5
clear all
clc
Sy = 800;
z = 6;
ratio = 1.1463;
T = 450*ratio;
diameter_gear = 109.5;
dog_engagement_height = 8; % axial
dog_thickness = 10; % radial
diameter_dogs = (diameter_gear+(diameter_gear-(2*dog_thickness)))/2;
dog_length = (20/diameter_dogs)*(180/pi); % tangential

SF_crushing = crushing( Sy, T, diameter_dogs, z, dog_length, dog_engagement_height, dog_thickness )
SF_shear = shear( Sy, T, diameter_dogs, z, dog_length, dog_engagement_height, dog_thickness )