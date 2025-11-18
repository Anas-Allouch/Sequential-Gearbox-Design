function res = Rating_C10( Peq, x, af, R )
    a       = 10/3;
    x0      = 0.02;
    teta    = 4.459;
    b       = 1.483;
    res     = af*Peq*(x/(x0 + (teta-x0)*((1-R)^(1/b))))^(1/a);
end

