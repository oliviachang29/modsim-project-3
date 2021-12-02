function [T,M,did_hit_piano,end_time] = ode_penny(initial_speed, theta_in_degrees)
    % initial parameters
    distance_to_piano = 1; % meters
    
    % margin of error on distance thrown (length of piano key / 2)
    % creates a range of x positions that make did_hit_piano true
    distance_to_piano_margin_error = 0.015/2; % meters
%     distance_to_piano_margin_error = 0.1; % meters
    distance_to_piano_lower_bound = distance_to_piano - distance_to_piano_margin_error;
    distance_to_piano_upper_bound = distance_to_piano + distance_to_piano_margin_error;
    
    h0 = 1;
    
    % convert degrees to radians
    theta = theta_in_degrees * (pi/180);
    
    % set initial position
    P = [0; h0];
    
    % get initial velocity
    [vx, vy] = pol2cart(theta,initial_speed);
    
    % package into vectors
    V = [vx; vy];
    W = [P; V];
    
    % set time span (100 is arbitrarily large but may need to change this in
    % order to get greater time lengths)
    max_song_length = 100;
    t_span = [0 max_song_length];
    
    % stop the function when it hits the piano
    options = odeset('Events', @event_func);
    
    [T, M] = ode45(@rate_func, t_span, W, options);
    end_x_pos = M(end, 1);
    
    did_hit_piano = false;
    if distance_to_piano_lower_bound < end_x_pos && distance_to_piano_upper_bound > end_x_pos
        did_hit_piano = true;
    end
    
    end_time = T(end,1);
end