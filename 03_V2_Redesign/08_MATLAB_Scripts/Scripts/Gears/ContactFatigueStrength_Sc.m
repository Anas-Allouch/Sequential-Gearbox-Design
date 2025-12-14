function res = ContactFatigueStrength_Sc( hardness, grade )
    res = 2.22*hardness + 200;
    if(grade == 2)
        res = 2.41*hardness + 237;
    end
end

