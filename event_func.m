function [value, isterminal, direction] = event_func(t,W)
    % stop the function when the penny reaches the piano height
    piano_height = 0.7239; % meters, average piano height

    x_pos = W(1);
    y_pos = W(2);
    value = y_pos - piano_height;
    isterminal = 1;
    direction = -1; % value should be decreasing as x pos increases
end