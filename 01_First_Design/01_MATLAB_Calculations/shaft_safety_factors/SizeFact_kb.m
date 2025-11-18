function res = SizeFact_kb( d )
    res = 1.24 * (d^(-0.107));
    if d > 51
        res = 1.51 * (d^(-0.157));
    end
end

