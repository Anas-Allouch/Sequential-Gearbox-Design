function res = SafFactASME( Se, Sy, d, kf, kfs, Ma, Mm, Ta, Tm )
    res = 1/((16/(pi*d^3))*sqrt(4*(kf*Ma/Se)^2 + 3*(kfs*Ta/Se)^2 + 4*(kf*Mm/Sy)^2 + 3*(kfs*Tm/Sy)^2));
end

