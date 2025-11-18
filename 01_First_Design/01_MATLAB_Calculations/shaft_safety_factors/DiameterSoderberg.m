function res = DiameterSoderberg( Se, Syt, n, A, B )
    res = ((16*n/pi)*((1/Se)*A + (1/Syt)*B))^(1/3);
end

