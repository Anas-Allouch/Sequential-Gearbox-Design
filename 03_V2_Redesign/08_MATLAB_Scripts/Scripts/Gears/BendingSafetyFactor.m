function res = BendingSafetyFactor( W, Q, d, b, z, n, m, bearingtobearing, gearfromcenter, Yj, hardness, grade, cycles, R )
    sigma   = BendingStress( W, Q, d, b, z, n, m, bearingtobearing, gearfromcenter, Yj );
    % St      = AllowableBendingStress_St( hardness, grade );
    St      = 520;
    Yn      = BendingStressCycle_Yn( cycles );
    Yteta   = 1; % section 14-15
    Yz      = ReliabilityFactor_Yz( R );
    res     = (St/sigma)*(Yn/(Yteta*Yz));
end

