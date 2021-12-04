function [closest_angle, error] = find_closest_angle(desired_time)
    % find angle that minimizes the time error for desired time
    x_distance = 1;
    y_distance = 0;
    [initial_speed_guess, angle_guess] = get_speed_and_angle(desired_time,x_distance,y_distance);

    [closest_angle, error] = fminsearch(@(a) time_error(desired_time, initial_speed_guess, a), angle_guess);
end