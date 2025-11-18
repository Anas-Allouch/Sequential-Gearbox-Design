function res = Lewis_Y( z )
    filename = 'C:\Users\anasa\OneDrive\Desktop\Gearbox Project\Excel Files\Lewis Form Factor.xlsx';
    x_range = 'B3:B27';
    y_range = 'C3:C27';
    x = xlsread(filename, 1, x_range);
    y = xlsread(filename, 1, y_range);
    res = interp1(x, y, z, 'linear');
end

