function res = acceleration(t, P, V)
    g = 9.8; % m/s^2, accel due to gravity
    m = 0.0025; % kg, mass of penny
    a_gravity = [0; -g];
%     ignore drag force for now
%     a_drag = drag_force(V) / m; 
%     res = a_gravity + a_drag;
    res = a_gravity;
end