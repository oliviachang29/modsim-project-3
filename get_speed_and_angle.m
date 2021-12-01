function [v0,angle] = get_speed_and_angle(time,x_distance,y_distance)
    v0x = get_v0x(time,x_distance);
    v0y = get_v0y(time,y_distance);
    v0 = sqrt(v0x^2 + v0y^2);
    angle = atan(v0y/v0x) * (180 / pi);
end

