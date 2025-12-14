function res = EnduranceLimitModFact_Se( Sut, ka, kb, kc, kd, ke, kf )
    Se_prime = 700*1000000;
    if Sut <= 1400*1000000
        Se_prime = 0.5*Sut;
    end
    res = Se_prime * ka * kb * kc * kd * ke * kf;
end
% ka surface condition modification factor book 312
% kb size modification factor book 313
% kc load modification factor book 315
% kd temperature modification factor book 317
% ke reliability factor book 317
% kf miscellaneous-effects modification factor book 320, equal 1 unless
% special