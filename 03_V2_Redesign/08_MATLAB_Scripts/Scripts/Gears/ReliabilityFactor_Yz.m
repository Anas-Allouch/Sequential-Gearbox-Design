function res = ReliabilityFactor_Yz( R )
    res = 0.5 - 0.109*log(1-R);
    if(R < 0.99)
        res = 0.658 - 0.0759*log(1-R);
    end
end

