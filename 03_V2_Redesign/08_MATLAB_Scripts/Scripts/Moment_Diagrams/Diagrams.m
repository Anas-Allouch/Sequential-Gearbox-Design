%% intput gear 1
clear all
clc
T = 450;
m = 3;
z = 25;
Ft = (2*T/(0.001*m*z))*cosd(20);
Fr = Ft*tand(20);

a = [0 106 302];
a = a.*0.001;
L = a(3);
At = Ft*(a(3)-a(2))/a(3); % sum of moment at B is equal to 0
Bt = Ft - At;
Ar = Fr*(a(3)-a(2))/a(3);
Br = At-Fr;

F = [-At Ft -Bt];
moment = 'Mxz';
[max_abs_moment, x_My_all, My_all] = MomentDiagram(L, F, a, moment);

F = [Ar -Fr Br];
moment = 'Mxy';
[max_abs_moment, x_Mz_all, Mz_all] = MomentDiagram(L, F, a, moment);
positions = [10; 15; 36; 56; 106; 126; 141; 156; 186; 198; 211; 223; 237; 266; 286; 292];
positions = positions.*(0.001);
Mxz = Values(x_My_all, My_all, positions);
Mxy = Values(x_Mz_all, Mz_all, positions);
disp('Mxy');
disp(Mxy);
disp('Mxz');
disp(Mxz);
for i=1:1:size(Mxy)
    M_max(i) = sqrt((Mxy(i))^2+(Mxz(i))^2);
end
%for i=1:1:length(M_max)
%    disp(M_max(i));
%end

%% reverse gear
clear all
clc
T = 450;
m = 2.5;
z = 31;
Ft = (2*T/(0.001*m*z))*cosd(20);
Fr = Ft*tand(20);

a = [0 36 302];
a = a.*0.001;
L = a(3);
At = Ft*(a(3)-a(2))/a(3); % sum of moment at B is equal to 0
Bt = Ft - At;
Ar = Fr*(a(3)-a(2))/a(3);
Br = At-Fr;

F = [-At Ft -Bt];
moment = 'Mxz';
[max_abs_moment, x_My_all, My_all] = MomentDiagram(L, F, a, moment);

F = [Ar -Fr Br];
moment = 'Mxy';
[max_abs_moment, x_Mz_all, Mz_all] = MomentDiagram(L, F, a, moment);
positions = [10; 15; 36; 56; 106; 126; 141; 156; 186; 198; 211; 223; 237; 266; 286; 292];
positions = positions.*(0.001);
Mxz = Values(x_My_all, My_all, positions);
Mxy = Values(x_Mz_all, Mz_all, positions);
disp('Mxy');
disp(Mxy);
disp('Mxz');
disp(Mxz);
for i=1:1:size(Mxy)
    M_max(i) = sqrt((Mxy(i))^2+(Mxz(i))^2);
end
%for i=1:1:length(M_max)
%    disp(M_max(i));
%end

%% gear 2
clear all
clc
T = 450;
m = 3;
z = 31;
Ft = (2*T/(0.001*m*z))*cosd(20);
Fr = Ft*tand(20);
a = [0 141 302];
a = a.*0.001;
L = a(3);
At = Ft*(a(3)-a(2))/a(3); % sum of moment at B is equal to 0
Bt = Ft - At;
Ar = Fr*(a(3)-a(2))/a(3);
Br = At-Fr;

F = [-At Ft -Bt];
moment = 'Mxz';
[max_abs_moment, x_My_all, My_all] = MomentDiagram(L, F, a, moment);

F = [Ar -Fr Br];
moment = 'Mxy';
[max_abs_moment, x_Mz_all, Mz_all] = MomentDiagram(L, F, a, moment);
positions = [10; 15; 36; 56; 106; 126; 141; 156; 186; 198; 211; 223; 237; 266; 286; 292];
positions = positions.*(0.001);
Mxz = Values(x_My_all, My_all, positions);
Mxy = Values(x_Mz_all, Mz_all, positions);
% disp('Mxy');
% disp(Mxy);
% disp('Mxz');
% disp(Mxz);
for i=1:1:size(Mxy)
    M_max(i) = sqrt((Mxy(i))^2+(Mxz(i))^2);
end

%% gear 3
clear all
clc
T = 450;
m = 3;
z = 37;
Ft = (2*T/(0.001*m*z))*cosd(20);
Fr = Ft*tand(20);

a = [0 198 302];
a = a.*0.001;
L = a(3);
At = Ft*(a(3)-a(2))/a(3); % sum of moment at B is equal to 0
Bt = Ft - At;
Ar = Fr*(a(3)-a(2))/a(3);
Br = At-Fr;

F = [-At Ft -Bt];
moment = 'Mxz';
[max_abs_moment, x_My_all, My_all] = MomentDiagram(L, F, a, moment);

F = [Ar -Fr Br];
moment = 'Mxy';
[max_abs_moment, x_Mz_all, Mz_all] = MomentDiagram(L, F, a, moment);
positions = [10; 15; 36; 56; 106; 126; 141; 156; 186; 198; 211; 223; 237; 266; 286; 292];
positions = positions.*(0.001);
Mxz = Values(x_My_all, My_all, positions);
Mxy = Values(x_Mz_all, Mz_all, positions);
% disp('Mxy');
% disp(Mxy);
% disp('Mxz');
% disp(Mxz);
for i=1:1:size(Mxy)
    M_max(i) = sqrt((Mxy(i))^2+(Mxz(i))^2);
end

%% gear 4
clear all
clc
T = 450;
m = 3;
z = 41;
Ft = (2*T/(0.001*m*z))*cosd(20);
Fr = Ft*tand(20);

a = [0 223 302];
a = a.*0.001;
L = a(3);
At = Ft*(a(3)-a(2))/a(3); % sum of moment at B is equal to 0
Bt = Ft - At;
Ar = Fr*(a(3)-a(2))/a(3);
Br = At-Fr;

F = [-At Ft -Bt];
moment = 'Mxz';
[max_abs_moment, x_My_all, My_all] = MomentDiagram(L, F, a, moment);

F = [Ar -Fr Br];
moment = 'Mxy';
[max_abs_moment, x_Mz_all, Mz_all] = MomentDiagram(L, F, a, moment);
positions = [10; 15; 36; 56; 106; 126; 141; 156; 186; 198; 211; 223; 237; 266; 286; 292];
positions = positions.*(0.001);
Mxz = Values(x_My_all, My_all, positions);
Mxy = Values(x_Mz_all, Mz_all, positions);
% disp('Mxy');
% disp(Mxy);
% disp('Mxz');
% disp(Mxz);
for i=1:1:size(Mxy)
    M_max(i) = sqrt((Mxy(i))^2+(Mxz(i))^2);
end

%% gear 5
clear all
clc
T = 450;
m = 3;
z = 49;
Ft = (2*T/(0.001*m*z))*cosd(20);
Fr = Ft*tand(20);

a = [0 276 302];
a = a.*0.001;
L = a(3);
At = Ft*(a(3)-a(2))/a(3); % sum of moment at B is equal to 0
Bt = Ft - At;
Ar = Fr*(a(3)-a(2))/a(3);
Br = At-Fr;

F = [-At Ft -Bt];
moment = 'Mxz';
[max_abs_moment, x_My_all, My_all] = MomentDiagram(L, F, a, moment);

F = [Ar -Fr Br];
moment = 'Mxy';
[max_abs_moment, x_Mz_all, Mz_all] = MomentDiagram(L, F, a, moment);
positions = [10; 15; 36; 56; 106; 126; 141; 156; 186; 198; 211; 223; 237; 266; 286; 292];
positions = positions.*(0.001);
Mxz = Values(x_My_all, My_all, positions);
Mxy = Values(x_Mz_all, Mz_all, positions);
% disp('Mxy');
% disp(Mxy);
% disp('Mxz');
% disp(Mxz);
for i=1:1:size(Mxy)
    M_max(i) = sqrt((Mxy(i))^2+(Mxz(i))^2);
end

%% output gear 1 + reverse
clear all
clc
T = 450;
m = 3;
z = 25;
Ft = (2*T/(0.001*m*z))*cosd(20);
Fr = Ft*tand(20);

a = [0 106 302];
a = a.*0.001;
L = a(3);
At = Ft*(a(3)-a(2))/a(3); % sum of moment at B is equal to 0
Bt = Ft - At;
Ar = Fr*(a(3)-a(2))/a(3);
Br = At-Fr;

F = [-At Ft -Bt];
moment = 'Mxz';
[max_abs_moment, x_My_all, My_all] = MomentDiagram(L, F, a, moment);

F = [Ar -Fr Br];
moment = 'Mxy';
[max_abs_moment, x_Mz_all, Mz_all] = MomentDiagram(L, F, a, moment);
positions = [10; 15; 56; 86; 126; 171; 211; 251; 286; 292];
positions = positions.*(0.001);
Mxz = Values(x_My_all, My_all, positions);
Mxy = Values(x_Mz_all, Mz_all, positions);
disp('Mxy');
disp(Mxy);
disp('Mxz');
disp(Mxz);
for i=1:1:size(Mxy)
    M_max(i) = sqrt((Mxy(i))^2+(Mxz(i))^2);
end

%% output gear 2 + gear 3
clear all
clc
T = 450;
m = 3;
z = 31;
Ft = (2*T/(0.001*m*z))*cosd(20);
Fr = Ft*tand(20);

a = [0 141 302];
a = a.*0.001;
L = a(3);
At = Ft*(a(3)-a(2))/a(3); % sum of moment at B is equal to 0
Bt = Ft - At;
Ar = Fr*(a(3)-a(2))/a(3);
Br = At-Fr;

F = [-At Ft -Bt];
moment = 'Mxz';
[max_abs_moment, x_My_all, My_all] = MomentDiagram(L, F, a, moment);

F = [Ar -Fr Br];
moment = 'Mxy';
[max_abs_moment, x_Mz_all, Mz_all] = MomentDiagram(L, F, a, moment);
positions = [10; 15; 56; 86; 126; 171; 211; 251; 286; 292];
positions = positions.*(0.001);
Mxz = Values(x_My_all, My_all, positions);
Mxy = Values(x_Mz_all, Mz_all, positions);
disp('Mxy');
disp(Mxy);
disp('Mxz');
disp(Mxz);
for i=1:1:size(Mxy)
    M_max(i) = sqrt((Mxy(i))^2+(Mxz(i))^2);
end

%% output gear 4 + gear 5
clear all
clc
T = 450;
m = 3;
z = 41;
Ft = (2*T/(0.001*m*z))*cosd(20);
Fr = Ft*tand(20);

a = [0 223 302];
a = a.*0.001;
L = a(3);
At = Ft*(a(3)-a(2))/a(3); % sum of moment at B is equal to 0
Bt = Ft - At;
Ar = Fr*(a(3)-a(2))/a(3);
Br = At-Fr;

F = [-At Ft -Bt];
moment = 'Mxz';
[max_abs_moment, x_My_all, My_all] = MomentDiagram(L, F, a, moment);

F = [Ar -Fr Br];
moment = 'Mxy';
[max_abs_moment, x_Mz_all, Mz_all] = MomentDiagram(L, F, a, moment);
positions = [10; 15; 56; 86; 126; 171; 211; 251; 286; 292];
positions = positions.*(0.001);
Mxz = Values(x_My_all, My_all, positions);
Mxy = Values(x_Mz_all, Mz_all, positions);
disp('Mxy');
disp(Mxy);
disp('Mxz');
disp(Mxz);
for i=1:1:size(Mxy)
    M_max(i) = sqrt((Mxy(i))^2+(Mxz(i))^2);
end