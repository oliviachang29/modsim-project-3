function [v0y] = get_v0y(time,distance)
    g = 9.8; % m/s^2
    v0y = 0.5*g*time + distance/time;
end

