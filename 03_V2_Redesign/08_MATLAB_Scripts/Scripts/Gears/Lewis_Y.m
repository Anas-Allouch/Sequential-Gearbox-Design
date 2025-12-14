function res = Lewis_Y( z )
    %filename = '\Lewis Form Factor.xlsx';
    x_range = 'B3:B27';
    y_range = 'C3:C27';
    x = xlsread('Lewis Form Factor.xlsx', 1, x_range);
    y = xlsread('Lewis Form Factor.xlsx', 1, y_range);
    res = interp1(x, y, z, 'linear');
end

