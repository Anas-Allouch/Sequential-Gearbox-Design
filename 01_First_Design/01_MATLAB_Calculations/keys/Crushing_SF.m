function res = Crushing_SF( Sy, T, t, l, d )
    % Sy_Pa   = Sy * 1000000;
    F       = 2*T/d;
    res     = (Sy*t*l)/(2*F);
end

