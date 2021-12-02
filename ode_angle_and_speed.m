function [found_angle, found_speed, error] = ode_angle_and_speed(desired_time)
    %Finding the angle and speed where the difference between desired time 
    %and measured time is zero
    x_distance = 1;
    y_distance = 0;
    [initial_speed_guess, angle_guess] = get_speed_and_angle(desired_time,x_distance,y_distance);
    [found_angle, error] = fminsearch(@(a) time_error(desired_time, initial_speed_guess, a), angle_guess);
    found_speed = find_speed0(found_angle,100); % input degrees, get speed
end
