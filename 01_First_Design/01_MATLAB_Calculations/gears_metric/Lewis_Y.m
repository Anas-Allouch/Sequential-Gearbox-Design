function res = Lewis_Y( z )
    scriptPath = mfilename('fullpath');
    [scriptDir, ~, ~] = fileparts(scriptPath);
    excelDir = fullfile(scriptDir, '..', '..', '02_Excel_Tables');
    filename = fullfile(excelDir, 'Lewis Form Factor.xlsx');
    x_range = 'B3:B27';
    y_range = 'C3:C27';
    x = xlsread(filename, 1, x_range);
    y = xlsread(filename, 1, y_range);
    res = interp1(x, y, z, 'linear');
end


