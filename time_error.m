function error = time_error(desired_time, initial_speed_guess, angle)
    % Compute the error associated with actual time to hit piano vs.
    % desired time to hit piano
    
    
    % when the angle is outside of 0 to 90 degrees (exclusive) the time error is infinite because
    % the penny will never hit the piano; which will confuse fzero and fminsearch
    % so we need to add a catch for this scenario
     if angle >= 90 || angle < 0
         % set error to be arbitrarily large if the angle is outside of 0 to 90 degrees
         error = 1000000;
     else
        % Find speed that corresponds to angle being tested
        % use root finding to get actual speed corresponding to angle with drag
        speed0 = find_speed0(angle,initial_speed_guess); % input degrees, get speed

        % call ode_penny to get the time it takes to hit piano
        % ode_penny parameters: (speed in m/s, angle in degrees)
        [~,~,~,end_time] = ode_penny(speed0,angle);
        
        % Find difference between projectile time and intended time
        % calculate error
        error = abs(desired_time - end_time);
     end
end
