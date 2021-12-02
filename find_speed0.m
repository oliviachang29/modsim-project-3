function speed0 = find_speed0(angle,initial_guess)
    %find zero-distance-error for given angle 
    [speed0, error] = fzero(@(s) distance_error(s, angle), initial_guess);
end