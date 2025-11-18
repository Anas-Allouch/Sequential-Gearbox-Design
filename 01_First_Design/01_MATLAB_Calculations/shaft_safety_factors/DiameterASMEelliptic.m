function res = DiameterASMEelliptic( Se, Sy, n, Ma, Mm, Ta, Tm, kf, kfs )
    res = ((16*n/pi)*sqrt(4*(kf*Ma/Se)^2 + 3*(kfs*Ta/Se)^2 + 4*(kf*Mm/Sy)^2 + 3*(kfs*Tm/Sy)^2))^(1/3);
end

