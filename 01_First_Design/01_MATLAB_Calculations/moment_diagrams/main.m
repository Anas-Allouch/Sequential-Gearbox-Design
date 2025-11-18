%% Input shaft reverse gear
clear all
clc
range_Fy = 'F4:F11';
range_Fz = 'G4:G11';
range_features = 'C4:C21';
Moment = InputShaft(range_Fy, range_Fz, range_features);

%% Input shaft gear 1
clear all
clc
range_Fy = 'M4:M11';
range_Fz = 'N4:N11';
range_features = 'C4:C21';
Moment = InputShaft(range_Fy, range_Fz, range_features);

%% Input shaft gear 2
clear all
clc
range_Fy = 'F16:F23';
range_Fz = 'G16:G23';
range_features = 'C4:C21';
Moment = InputShaft(range_Fy, range_Fz, range_features);

%% Input shaft gear 3
clear all
clc
range_Fy = 'M16:M23';
range_Fz = 'N16:N23';
range_features = 'C4:C21';
Moment = InputShaft(range_Fy, range_Fz, range_features);

%% Input shaft gear 4
clear all
clc
range_Fy = 'F28:F35';
range_Fz = 'G28:G35';
range_features = 'C4:C21';
Moment = InputShaft(range_Fy, range_Fz, range_features);

%% Input shaft gear 5
clear all
clc
range_Fy = 'M28:M35';
range_Fz = 'N28:N35';
range_features = 'C4:C21';
Moment = InputShaft(range_Fy, range_Fz, range_features);

%% output shaft reverse
clear all
clc
range_Fy = 'F4:F11';
range_Fz = 'G4:G11';
range_features = 'C4:C14';
ratio = 3.05;
torque = 450*ratio;
Moment = OutputShaft(range_Fy, range_Fz, range_features, torque);

%% output shaft gear 1
clear all
clc
range_Fy = 'M4:M11';
range_Fz = 'N4:N11';
range_features = 'C4:C14';
ratio = 3.238;
torque = 450*ratio;
Moment = OutputShaft(range_Fy, range_Fz, range_features, torque);

%% output shaft gear 2
clear all
clc
range_Fy = 'F16:F23';
range_Fz = 'G16:G23';
range_features = 'C4:C14';
ratio = 2.7083;
torque = 450*ratio;
Moment = OutputShaft(range_Fy, range_Fz, range_features, torque);

%% output shaft gear 3
clear all
clc
range_Fy = 'M16:M23';
range_Fz = 'N16:N23';
range_features = 'C4:C14';
ratio = 2.1786;
torque = 450*ratio;
Moment = OutputShaft(range_Fy, range_Fz, range_features, torque);

%% output shaft gear 4
clear all
clc
range_Fy = 'F28:F35';
range_Fz = 'G28:G35';
range_features = 'C4:C14';
ratio = 1.697;
torque = 450*ratio;
Moment = OutputShaft(range_Fy, range_Fz, range_features, torque);

%% output shaft gear 5
clear all
clc
range_Fy = 'M28:M35';
range_Fz = 'N28:N35';
range_features = 'C4:C14';
ratio = 1.1707;
torque = 450*ratio;
Moment = OutputShaft(range_Fy, range_Fz, range_features, torque);