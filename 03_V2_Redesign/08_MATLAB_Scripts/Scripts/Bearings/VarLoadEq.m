function [ Peq, neq ] = VarLoadEq( Fr, Fa, t_fraction, rot_speed )
a = 10/3; % 3 for ball bearings
X = 1; % spur gears
Y = 0; % spur gears
P = X.*Fr + Y.*Fa;
num = 0;
den = 0;
neq = 0;
for i=1:1:length(P)
    num = num + ((P(i))^a)*t_fraction(i)*rot_speed(i);
    den = den + t_fraction(i)*rot_speed(i);
    neq = neq + rot_speed(i)*t_fraction(i);
end
Peq = (num/den)^(1/a);
end

