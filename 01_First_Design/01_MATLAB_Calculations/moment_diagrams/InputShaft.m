function res = InputShaft( range_Fy, range_Fz, features_range )
File_F = 'C:\Users\anasa\OneDrive\Desktop\Gearbox Project\Excel Files\Important\input shaft forces.xlsx';
Fy = xlsread(File_F, 1, range_Fy);
Fz = xlsread(File_F, 1, range_Fz);
locations = [0 38.23 97.08 134 193 229.93 288.78 327];
locations = locations.*0.001;
length = 0.327;
[max_Mxy, x_My_all, My_all] = MomentDiagram(length, Fy, locations, 'Mxy');
[max_Mxz, x_Mz_all, Mz_all] = MomentDiagram(length, Fz, locations, 'Mxz');
disp(max_Mxy);
disp(max_Mxz);
filename = 'C:\Users\anasa\OneDrive\Desktop\Gearbox Project\Excel Files\Important\input shaft features.xlsx';
positions = xlsread(filename, 1, features_range);
positions = positions.*(0.001);
Mxy = Values(x_My_all, My_all, positions);
Mxz = Values(x_Mz_all, Mz_all, positions);
disp('Mxy =');
disp(Mxy);
disp('Mxz =');
disp(Mxz);
torque = 450;
y = [torque torque];
x = [0 0.327];
figure
plot(x, y);
grid on;
ylim([0 1000]);
res = [max_Mxy max_Mxz];
end

