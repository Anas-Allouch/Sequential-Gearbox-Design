function res = Shear_SF( Sy, T, t, l, d )
    % Sy_Pa   = Sy * 1000000;
    F       = 2*T/d;
    res     = (0.577*Sy*t*l)/(F);
end

