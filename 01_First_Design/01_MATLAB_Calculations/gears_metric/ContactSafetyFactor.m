function res = ContactSafetyFactor( Ein, Eout, poisson_in, poisson_out, Q, W, din, dp, b, z, n, ratio, BtoB, GfC, N, R, hardness, grade )
    Yteta   = 1; % section 14-15
    Yz      = ReliabilityFactor_Yz( R );
    Zn      = ContactStressCycle_Zn( N );
    % Sc    = ContactFatigueStrength_Sc( hardness, grade );
    Sc      = 1650;
    Zw      = 1; % section 14-12, same hardness on input and output
    sigma   = ContactStress( Ein, Eout, poisson_in, poisson_out, Q, W, din, dp, b, z, n, ratio, BtoB, GfC );
    res     = (Sc/sigma)*((Zn*Zw)/(Yteta*Yz));
end

