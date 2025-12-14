function moments = Values( x_M_all, M_all, locations )
    [x_unique, idx] = unique(x_M_all);
    M_unique = M_all(idx);
    moments = interp1(x_unique, M_unique, locations, 'linear');
end

