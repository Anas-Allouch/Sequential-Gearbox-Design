function res = AllowableBendingStress_St( hardness, grade )
    res = 0.568*hardness + 83.8;
    if(grade == 2)
        res = 0.749*hardness + 110;
    end
    
end

