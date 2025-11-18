function res = OutputShaft( range_Fy, range_Fz, features_range, torque )
scriptPath = mfilename('fullpath');
[scriptDir, ~, ~] = fileparts(scriptPath);
excelDir = fullfile(scriptDir, '..', '..', '02_Excel_Calculations');

File_F = fullfile(excelDir, 'output shaft forces.xlsx');
Fy = xlsread(File_F, 1, range_Fy);
Fz = xlsread(File_F, 1, range_Fz);
locations = [0 38.23 97.08 134 193 229.93 288.78 327];
locations = locations.*0.001;
length = 0.327;
[max_Mxy, x_My_all, My_all] = MomentDiagram(length, Fy, locations, 'Mxy');
[max_Mxz, x_Mz_all, Mz_all] = MomentDiagram(length, Fz, locations, 'Mxz');
disp(max_Mxy);
disp(max_Mxz);

fullfile(excelDir, 'output shaft features.xlsx');
positions = xlsread(filename, 1, features_range);
positions = positions.*(0.001);
Mxy = Values(x_My_all, My_all, positions);
Mxz = Values(x_Mz_all, Mz_all, positions);
disp('Mxy =');
disp(Mxy);
disp('Mxz =');
disp(Mxz);
y = [torque torque];
x = [0 0.327];
figure
plot(x, y);
grid on;
ylim([0 3000]);
res = [max_Mxy max_Mxz];

end
