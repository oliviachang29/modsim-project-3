function res = drag_force(V)
    rho = 1.3; % kg / m^3, density of air at sea level

    drag_coeff = 1.17; % dimensionless, measured from studies
    A = 2.9e-5; % m^2, area of penny opposite of motion
    
    v = norm(V); % m/s, magnitude of velocity
    
    res = -1/2 * drag_coeff * rho * A * v * V;
end