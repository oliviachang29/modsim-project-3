function [value, isterminal, direction] = event_func(t,W)
    % stop the function when the penny reaches the piano height
    global initial_height_launcher x_distance_to_piano y_distance_to_piano;

    piano_height = initial_height_launcher + y_distance_to_piano;

    y_pos = W(2);
    value = y_pos - piano_height;
    isterminal = 1;
    direction = -1; % value should be decreasing as x pos increases
end