function res = time_error(angle,time)
    %Find speed that corresponds to angle being tested
    speed = find_speed0(angle);
    %Find difference between projectile time and intended time
    [~,~,~,end_time] = ode_penny(angle, speed);
    res = end_time-time;
end

