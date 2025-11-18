function res = DiameterGoodman( Se, Sut, n, A, B )
    res = ((16*n/pi)*((1/Se)*A + (1/Sut)*B))^(1/3);
end

