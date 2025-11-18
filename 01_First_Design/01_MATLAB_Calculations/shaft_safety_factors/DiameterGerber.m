function res = DiameterGerber( Se, Sut, n, A, B )
    res = ((8*n*A/(pi*Se))*(1 + sqrt(1+(2*B*Se/(A*Sut))^2)))^(1/3);
end

