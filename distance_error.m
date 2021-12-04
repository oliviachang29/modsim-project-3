function error = distance_error(speed0, angle)
  
        % Compute the error associated with penny final distance

        distance_to_piano = 1; % meters

        % ode_penny parameters: (speed in m/s, angle in degrees)
        [~, M, ~,~] = ode_penny(speed0,angle);
        end_x_pos = M(end, 1);

        error = end_x_pos - distance_to_piano; % error (m)

end
