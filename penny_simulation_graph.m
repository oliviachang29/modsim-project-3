function res = penny_simulation_graph(T, M, did_hit_piano, end_time, angle, speed)
    disp("The penny hit the piano: " + did_hit_piano)
    disp("The penny took " + end_time + " seconds to reach the y position of the piano.")
    Y = M(:,2);
    plot(T, Y)
    title("Vertical trajectory of a penny launched at " + angle + " degrees and " + speed + " m/s")
    xlabel('Time (s)')
    ylabel('Height (m)')
end

