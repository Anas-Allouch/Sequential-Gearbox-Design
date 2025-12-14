function res = LoadDistFact_kH( d, b, S, S1 )
    %S_in    = S * 0.0393701;
    %S1_in   = S1 * 0.0393701;
    d_in    = d/25.4;
    b_in    = b/25.4;
    a       = b_in/(10*d_in);
    if(a < 0.05)
        a = 0.05;
    end
    if(b_in <= 1)
        cpf = a - 0.025;
    elseif(b_in > 1 && b_in <= 17)
        cpf = a - 0.0375 + 0.0125*b_in;
    else
        cpf = a - 0.1109 + 0.0207*b_in - 0.000228*(b_in^2);
    end
    cpm = 1.1;
    if(S1/S < 0.175)
        cpm = 1;
    end
    A   = 0.0675;
    B   = 0.0128;
    C   = -0.926 * 0.0001;
    cma = A + B*b_in + C*(b_in^2); % table 14-9
    cmc = 1;
    ce  = 0.8;
    res = 1 + cmc * (cpf*cpm + cma*ce);
end

