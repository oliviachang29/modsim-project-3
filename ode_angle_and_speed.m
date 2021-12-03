function [found_angle, found_speed] = ode_angle_and_speed(time)
    %Finding the angle and speed where the difference between desired time 
    %and measured time is zero
    found_angle = fzero(@(angle) time_error(angle,time) , 40);
    found_speed = find_speed0(found_angle);
end

