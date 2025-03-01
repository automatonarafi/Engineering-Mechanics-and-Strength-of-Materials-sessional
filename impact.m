% Data
specimens = {'Aluminium', 'Nylon', 'Aerylie'}; % Specimen names
area_under_notch = [9.734, 91.4112, 80.29]; % Area under the notch (mm²)
notch_impact_strength = [0.457, 0.0164, 0.006]; % Notch impact strength (Nm/mm²)

% Create grouped data
data = [area_under_notch; notch_impact_strength]';

% Create a figure
figure;

% Create a 3D grouped bar chart
bar_handle = bar3(data);

% Customizing bar colors
bar_handle(1).FaceColor = [0 0.447 0.741];  % Blue for Area Under The Notch
bar_handle(2).FaceColor = [0.85 0.325 0.098]; % Red for Notch Impact Strength

% Labels and Title
xlabel('Types of Specimen', 'FontWeight', 'bold');
ylabel('Metrics', 'FontWeight', 'bold');
zlabel('Value', 'FontWeight', 'bold');
title('Comparison of Notch Impact Strength and Area Under The Notch', 'FontWeight', 'bold');

% Adjust X-axis labels
xticks(1:length(specimens));
xticklabels(specimens);
yticks([1, 2]);
yticklabels({'Area Under The Notch (mm²)', 'Notch Impact Strength (Nm/mm²)'});

% Adjusting View
grid on;
view([-30, 30]); % Adjust angle to match your image

% Add a legend
legend({'Area Under The Notch (mm²)', 'Notch Impact Strength (Nm/mm²)'}, 'Location', 'NorthEast');

% Improve Readability
set(gca, 'FontSize',6);
