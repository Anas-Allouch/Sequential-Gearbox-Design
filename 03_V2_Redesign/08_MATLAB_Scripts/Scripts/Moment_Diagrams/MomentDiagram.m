function [max_abs_moment, x_M_all, M_all] = MomentDiagram(L, F, a, moment)
N_forces = length(F);

transition_points = a;
N_segments = length(transition_points) - 1;

x_M_all = [];
M_all = [];

for k = 1:N_segments
    x_start = transition_points(k);
    x_end = transition_points(k+1);

    x_segment = linspace(x_start, x_end, 100);
    
    M_segment = zeros(size(x_segment));

    for i = 1:N_forces
        Force_loc = a(i);
        Force_val = F(i);
        
        if Force_loc < x_end 
            if Force_loc <= x_start
                M_segment = M_segment + Force_val * (x_segment - Force_loc);
            end
        end
    end
    x_M_all = [x_M_all, x_segment];
    M_all = [M_all, M_segment];
end

max_abs_moment = max(abs(M_all));

figure('Name', 'Bending Moment Diagram');
hold on;

plot(x_M_all, M_all, 'r-');

[x_unique, unique_indices] = unique(x_M_all);
M_unique = M_all(unique_indices);

M_at_points = interp1(x_unique, M_unique, transition_points, 'linear');
plot(transition_points, M_at_points, 'ko', 'MarkerSize', 5, 'MarkerFaceColor', 'k');

constantTitlePart = 'Moment diagram ';
graphTitle = [constantTitlePart, moment];
title(graphTitle);
xlabel('Position x (m)');
ylabel('Bending Moment M (Nm)');
grid on;

x_limits = xlim; 
plot(x_limits, [0, 0], 'k-'); 

xlim([0 L]);
hold off;
end

