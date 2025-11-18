%% input shaft reverse gear
clear all
clc
scriptPath = mfilename('fullpath');
[scriptDir, ~, ~] = fileparts(scriptPath);
excelDir = fullfile(scriptDir, '..', '..', '02_Excel_Tables');

file            = fullfile(excelDir, 'input shaft features.xlsx');
Moment_range    = 'F4:F21';
diam_range      = 'L4:L21';
notch_range     = 'M4:M21';
kt_range        = 'N4:N21';
kts_range       = 'O4:O21';

Sut     = 1250; % in [MPa]
Sy      = 1150; % in [MPa]
Mmax    = xlsread(file, 1, Moment_range);
diam    = xlsread(file, 1, diam_range);
notch   = xlsread(file, 1, notch_range);
kt      = xlsread(file, 1, kt_range);
kts     = xlsread(file, 1, kts_range);
Tmax    = 450;
flag    = 0; % 0 for input shaft, 1 for output shaft
for i=1:1:size(Mmax)
    n_SF(i, :) = SafetyFactors(Sut, Sy, Mmax(i), Tmax, diam(i), notch(i), kt(i), kts(i), flag);
end
for i=1:1:size(Mmax)
    disp(n_SF(i, :));
end

%% input shaft gear 1
clear all
clc
scriptPath = mfilename('fullpath');
[scriptDir, ~, ~] = fileparts(scriptPath);
excelDir = fullfile(scriptDir, '..', '..', '02_Excel_Tables');

file            = fullfile(excelDir, 'input shaft features.xlsx');
Moment_range    = 'F26:F43';
diam_range      = 'L26:L43';
notch_range     = 'M26:M43';
kt_range        = 'N26:N43';
kts_range       = 'O26:O43';

Sut     = 1250; % in [MPa]
Sy      = 1150; % in [MPa]
Mmax    = xlsread(file, 1, Moment_range);
diam    = xlsread(file, 1, diam_range);
notch   = xlsread(file, 1, notch_range);
kt      = xlsread(file, 1, kt_range);
kts     = xlsread(file, 1, kts_range);
Tmax    = 450;
flag    = 0;
for i=1:1:size(Mmax)
    n_SF(i, :) = SafetyFactors(Sut, Sy, Mmax(i), Tmax, diam(i), notch(i), kt(i), kts(i), flag);
end
for i=1:1:size(Mmax)
    disp(n_SF(i, :));
end

%% input shaft gear 2
clear all
clc
scriptPath = mfilename('fullpath');
[scriptDir, ~, ~] = fileparts(scriptPath);
excelDir = fullfile(scriptDir, '..', '..', '02_Excel_Tables');

file            = fullfile(excelDir, 'input shaft features.xlsx');
Moment_range    = 'F48:F65';
diam_range      = 'L48:L65';
notch_range     = 'M48:M65';
kt_range        = 'N48:N65';
kts_range       = 'O48:O65';

Sut     = 1250; % in [MPa]
Sy      = 1150; % in [MPa]
Mmax    = xlsread(file, 1, Moment_range);
diam    = xlsread(file, 1, diam_range);
notch   = xlsread(file, 1, notch_range);
kt      = xlsread(file, 1, kt_range);
kts     = xlsread(file, 1, kts_range);
Tmax    = 450;
flag    = 0;
for i=1:1:size(Mmax)
    n_SF(i, :) = SafetyFactors(Sut, Sy, Mmax(i), Tmax, diam(i), notch(i), kt(i), kts(i), flag);
end
for i=1:1:size(Mmax)
    disp(n_SF(i, :));
end

%% input shaft gear 3
clear all
clc
scriptPath = mfilename('fullpath');
[scriptDir, ~, ~] = fileparts(scriptPath);
excelDir = fullfile(scriptDir, '..', '..', '02_Excel_Tables');

file            = fullfile(excelDir, 'input shaft features.xlsx');
Moment_range    = 'F70:F87';
diam_range      = 'L70:L87';
notch_range     = 'M70:M87';
kt_range        = 'N70:N87';
kts_range       = 'O70:O87';

Sut     = 1250; % in [MPa]
Sy      = 1150; % in [MPa]
Mmax    = xlsread(file, 1, Moment_range);
diam    = xlsread(file, 1, diam_range);
notch   = xlsread(file, 1, notch_range);
kt      = xlsread(file, 1, kt_range);
kts     = xlsread(file, 1, kts_range);
Tmax    = 450;
flag    = 0;
for i=1:1:size(Mmax)
    n_SF(i, :) = SafetyFactors(Sut, Sy, Mmax(i), Tmax, diam(i), notch(i), kt(i), kts(i), flag);
end
for i=1:1:size(Mmax)
    disp(n_SF(i, :));
end

%% input shaft gear 4
clear all
clc
scriptPath = mfilename('fullpath');
[scriptDir, ~, ~] = fileparts(scriptPath);
excelDir = fullfile(scriptDir, '..', '..', '02_Excel_Tables');

file            = fullfile(excelDir, 'input shaft features.xlsx');
Moment_range    = 'F92:F109';
diam_range      = 'L92:L109';
notch_range     = 'M92:M109';
kt_range        = 'N92:N109';
kts_range       = 'O92:O109';

Sut     = 1250; % in [MPa]
Sy      = 1150; % in [MPa]
Mmax    = xlsread(file, 1, Moment_range);
diam    = xlsread(file, 1, diam_range);
notch   = xlsread(file, 1, notch_range);
kt      = xlsread(file, 1, kt_range);
kts     = xlsread(file, 1, kts_range);
Tmax    = 450;
flag    = 0;
for i=1:1:size(Mmax)
    n_SF(i, :) = SafetyFactors(Sut, Sy, Mmax(i), Tmax, diam(i), notch(i), kt(i), kts(i), flag);
end
for i=1:1:size(Mmax)
    disp(n_SF(i, :));
end

%% input shaft gear 5
clear all
clc
scriptPath = mfilename('fullpath');
[scriptDir, ~, ~] = fileparts(scriptPath);
excelDir = fullfile(scriptDir, '..', '..', '02_Excel_Tables');

file            = fullfile(excelDir, 'input shaft features.xlsx');
Moment_range    = 'F114:F131';
diam_range      = 'L114:L131';
notch_range     = 'M114:M131';
kt_range        = 'N114:N131';
kts_range       = 'O114:O131';

Sut     = 1250; % in [MPa]
Sy      = 1150; % in [MPa]
Mmax    = xlsread(file, 1, Moment_range);
diam    = xlsread(file, 1, diam_range);
notch   = xlsread(file, 1, notch_range);
kt      = xlsread(file, 1, kt_range);
kts     = xlsread(file, 1, kts_range);
Tmax    = 450;
flag    = 0;
for i=1:1:size(Mmax)
    n_SF(i, :) = SafetyFactors(Sut, Sy, Mmax(i), Tmax, diam(i), notch(i), kt(i), kts(i), flag);
end
for i=1:1:size(Mmax)
    disp(n_SF(i, :));
end

%% output shaft reverse gear
clear all
clc
scriptPath = mfilename('fullpath');
[scriptDir, ~, ~] = fileparts(scriptPath);
excelDir = fullfile(scriptDir, '..', '..', '02_Excel_Tables');

file            = fullfile(excelDir, 'output shaft features.xlsx');
Moment_range    = 'F4:F14';
diam_range      = 'L4:L14';
notch_range     = 'M4:M14';
kt_range        = 'N4:N14';
kts_range       = 'O4:O14';

Sut     = 1250; % in [MPa]
Sy      = 1150; % in [MPa]
Mmax    = xlsread(file, 1, Moment_range);
diam    = xlsread(file, 1, diam_range);
notch   = xlsread(file, 1, notch_range);
kt      = xlsread(file, 1, kt_range);
kts     = xlsread(file, 1, kts_range);
Tmax    = 1373;
flag    = 1;
for i=1:1:size(Mmax)
    n_SF(i, :) = SafetyFactors(Sut, Sy, Mmax(i), Tmax, diam(i), notch(i), kt(i), kts(i), flag);
end
for i=1:1:size(Mmax)
    disp(n_SF(i, :));
end

%% output shaft gear 1
clear all
clc
scriptPath = mfilename('fullpath');
[scriptDir, ~, ~] = fileparts(scriptPath);
excelDir = fullfile(scriptDir, '..', '..', '02_Excel_Tables');

file            = fullfile(excelDir, 'output shaft features.xlsx');
Moment_range    = 'F19:F29';
diam_range      = 'L19:L29';
notch_range     = 'M19:M29';
kt_range        = 'N19:N29';
kts_range       = 'O19:O29';

Sut     = 1250; % in [MPa]
Sy      = 1150; % in [MPa]
Mmax    = xlsread(file, 1, Moment_range);
diam    = xlsread(file, 1, diam_range);
notch   = xlsread(file, 1, notch_range);
kt      = xlsread(file, 1, kt_range);
kts     = xlsread(file, 1, kts_range);
Tmax    = 1457.1;
flag    = 1;
for i=1:1:size(Mmax)
    n_SF(i, :) = SafetyFactors(Sut, Sy, Mmax(i), Tmax, diam(i), notch(i), kt(i), kts(i), flag);
end
for i=1:1:size(Mmax)
    disp(n_SF(i, :));
end

%% output shaft gear 2
clear all
clc
scriptPath = mfilename('fullpath');
[scriptDir, ~, ~] = fileparts(scriptPath);
excelDir = fullfile(scriptDir, '..', '..', '02_Excel_Tables');

file            = fullfile(excelDir, 'output shaft features.xlsx');
Moment_range    = 'F34:F44';
diam_range      = 'L34:L44';
notch_range     = 'M34:M44';
kt_range        = 'N34:N44';
kts_range       = 'O34:O44';

Sut     = 1250; % in [MPa]
Sy      = 1150; % in [MPa]
Mmax    = xlsread(file, 1, Moment_range);
diam    = xlsread(file, 1, diam_range);
notch   = xlsread(file, 1, notch_range);
kt      = xlsread(file, 1, kt_range);
kts     = xlsread(file, 1, kts_range);
Tmax    = 1218.7;
flag    = 1;
for i=1:1:size(Mmax)
    n_SF(i, :) = SafetyFactors(Sut, Sy, Mmax(i), Tmax, diam(i), notch(i), kt(i), kts(i), flag);
end
for i=1:1:size(Mmax)
    disp(n_SF(i, :));
end

%% output shaft gear 3
clear all
clc
scriptPath = mfilename('fullpath');
[scriptDir, ~, ~] = fileparts(scriptPath);
excelDir = fullfile(scriptDir, '..', '..', '02_Excel_Tables');

file            = fullfile(excelDir, 'output shaft features.xlsx');
Moment_range    = 'F49:F59';
diam_range      = 'L49:L59';
notch_range     = 'M49:M59';
kt_range        = 'N49:N59';
kts_range       = 'O49:O59';

Sut     = 1250; % in [MPa]
Sy      = 1150; % in [MPa]
Mmax    = xlsread(file, 1, Moment_range);
diam    = xlsread(file, 1, diam_range);
notch   = xlsread(file, 1, notch_range);
kt      = xlsread(file, 1, kt_range);
kts     = xlsread(file, 1, kts_range);
Tmax    = 980.37;
flag    = 1;
for i=1:1:size(Mmax)
    n_SF(i, :) = SafetyFactors(Sut, Sy, Mmax(i), Tmax, diam(i), notch(i), kt(i), kts(i), flag);
end
for i=1:1:size(Mmax)
    disp(n_SF(i, :));
end

%% output shaft gear 4
clear all
clc
scriptPath = mfilename('fullpath');
[scriptDir, ~, ~] = fileparts(scriptPath);
excelDir = fullfile(scriptDir, '..', '..', '02_Excel_Tables');

file            = fullfile(excelDir, 'output shaft features.xlsx');
Moment_range    = 'F64:F74';
diam_range      = 'L64:L74';
notch_range     = 'M64:M74';
kt_range        = 'N64:N74';
kts_range       = 'O64:O74';

Sut     = 1250; % in [MPa]
Sy      = 1150; % in [MPa]
Mmax    = xlsread(file, 1, Moment_range);
diam    = xlsread(file, 1, diam_range);
notch   = xlsread(file, 1, notch_range);
kt      = xlsread(file, 1, kt_range);
kts     = xlsread(file, 1, kts_range);
Tmax    = 763.65;
flag    = 1;
for i=1:1:size(Mmax)
    n_SF(i, :) = SafetyFactors(Sut, Sy, Mmax(i), Tmax, diam(i), notch(i), kt(i), kts(i), flag);
end
for i=1:1:size(Mmax)
    disp(n_SF(i, :));
end

%% output shaft gear 5
clear all
clc
scriptPath = mfilename('fullpath');
[scriptDir, ~, ~] = fileparts(scriptPath);
excelDir = fullfile(scriptDir, '..', '..', '02_Excel_Tables');

file            = fullfile(excelDir, 'output shaft features.xlsx');
Moment_range    = 'F79:F89';
diam_range      = 'L79:L89';
notch_range     = 'M79:M89';
kt_range        = 'N79:N89';
kts_range       = 'O79:O89';

Sut     = 1250; % in [MPa]
Sy      = 1150; % in [MPa]
Mmax    = xlsread(file, 1, Moment_range);
diam    = xlsread(file, 1, diam_range);
notch   = xlsread(file, 1, notch_range);
kt      = xlsread(file, 1, kt_range);
kts     = xlsread(file, 1, kts_range);
Tmax    = 526.82;
flag    = 1;
for i=1:1:size(Mmax)
    n_SF(i, :) = SafetyFactors(Sut, Sy, Mmax(i), Tmax, diam(i), notch(i), kt(i), kts(i), flag);
end
for i=1:1:size(Mmax)
    disp(n_SF(i, :));
end
