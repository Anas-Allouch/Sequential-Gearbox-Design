function res = LoadingFactor_kc( type )
    if isequal(type, 'bending')
        kc = 1;
    elseif isequal(type, 'axial')
        kc = 0.85;
    elseif isequal(type, 'torsion')
        kc = 0.59;
    end
    res = kc;
end

