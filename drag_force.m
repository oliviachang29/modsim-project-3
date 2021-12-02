function res = drag_force(V)
    rho = 1.3; % kg / m^3, density of air at sea level

    % THESE NEED TO BE CHANGED - these were from baseball simulation
    drag_coeff = 0.3; % dimensionless
    A = 0.0042; % m^2 cross ectional area of baseball
    
    v = norm(V); % m/s, magnitude of velocity
    
    res = -1/2 * drag_coeff * rho * A * v * V;
end