function res = SafFactGerber( Se, Sut, d, A, B )
    res = 1/((8*A/(pi*d^3*Se))*(1+(sqrt(1+((2*B*Se)/(A*Sut))^2))));
end

