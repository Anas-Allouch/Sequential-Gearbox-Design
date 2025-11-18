function res = ElasticCoef_Ze( Ein, Eout, poisson_in, poisson_out )
    x_pinion    = (1-(poisson_in^2))/Ein;
    x_gear      = (1-(poisson_out^2))/Eout;
    res = sqrt(1/(pi*(x_pinion + x_gear)));
end

