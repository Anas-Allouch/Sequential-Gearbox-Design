function [max_abs_moment, x_M_all, M_all] = MomentDiagram(L, F, a, moment)
N_forces = length(F);

% The critical points are the start/end of the beam and all force locations
transition_points = a; % Since 'a' is guaranteed to be [0, a1..an, L]
N_segments = length(transition_points) - 1;

x_M_all = []; % Combined x-values for plotting
M_all = [];   % Combined Moment values for plotting

% --- 3. Loop Through Each Segment to Calculate Bending Moment ---

for k = 1:N_segments
    x_start = transition_points(k);
    x_end = transition_points(k+1);

    % Generate x-values for this segment (e.g., 100 points)
    x_segment = linspace(x_start, x_end, 100);
    
    % Initialize the moment for the segment with contributions from forces/reactions BEFORE x_start
    M_segment = zeros(size(x_segment));
    
    % The moment M(x) is the sum of moments from all forces to the left of x.
    % We sum contributions from all forces F_i that occur BEFORE the segment END.

    for i = 1:N_forces
        Force_loc = a(i);
        Force_val = F(i);
        
        % Check if the force is to the left of the current segment end point.
        % Since 'a' is sorted, we can stop the inner loop early, but checking is safest.
        if Force_loc < x_end 
            % Contribution is F_i * (x - a_i). This must only be calculated 
            % for x > a_i, which is true for all x_segment if Force_loc <= x_start.
            
            % If the force is applied AT the transition point (x_start), 
            % it contributes to the moment starting from x_start.
            if Force_loc <= x_start
                M_segment = M_segment + Force_val * (x_segment - Force_loc);
            end
        end
    end
    
    % Append results
    x_M_all = [x_M_all, x_segment];
    M_all = [M_all, M_segment];
end

max_abs_moment = max(abs(M_all));

% --- 4. Plotting the Bending Moment Diagram ---
figure('Name', 'Bending Moment Diagram');
hold on;

% Plot the diagram
plot(x_M_all, M_all, 'r-');

% --- Fix for the "The grid vectors must contain unique points" error ---
[x_unique, unique_indices] = unique(x_M_all);
M_unique = M_all(unique_indices);

% Mark the moment values at all transition points
M_at_points = interp1(x_unique, M_unique, transition_points, 'linear');
plot(transition_points, M_at_points, 'ko', 'MarkerSize', 5, 'MarkerFaceColor', 'k');

% Formatting
constantTitlePart = 'Moment diagram ';
graphTitle = [constantTitlePart, moment];
title(graphTitle);
xlabel('Position x (m)');
ylabel('Bending Moment M (Nm)');
grid on;

% --- FIX for the Undefined function 'yline' error ---
% Get the current x-axis limits
x_limits = xlim; 
% Draw a line at y=0 from the left limit to the right limit
plot(x_limits, [0, 0], 'k-'); 

xlim([0 L]); % Re-assert the limits for the beam length
hold off;
end

