function [angle,speed] = find_angleandspeed(time)

    for 
        speed0_root_lo = find_speed0(89) % input degrees, get speed
        % check whether this works
        % simulate ODE and see whether it hits

        [T,M,did_hit_piano,end_time] = ode_penny(18.5043, 89);
        did_hit_piano
        end_time
end

