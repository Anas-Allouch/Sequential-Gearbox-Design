function res = GeomFactor_Zi( mG )
    phi = 20; % 20 degree pressure angle
    mN  = 1; % spur gears
    res = ((cosd(phi)*sind(phi))/(2*mN))*(mG/(mG+1));
end

