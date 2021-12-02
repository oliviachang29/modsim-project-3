function speed0 = find_speed0(angle)
    %find zero-distance-error for given angle 
    initial_guess = 40;
    speed0 = fzero(@(s) distance_error(s, angle), initial_guess);
end

% function speed0 = find_speed0(angle)
%     % Find zero-error speed0 for given angle
%     speed0 = fzero(@(s) error_height(s, angle), 40);
% end