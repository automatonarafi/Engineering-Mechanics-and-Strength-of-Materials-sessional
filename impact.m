% ------------------------
% 1) DATA & SETUP
% ------------------------
specimens           = {'Aluminium','Nylon','Acrylic'};
areaUnderNotch = [79.734, 91.4112, 80.229];
notchImpactStrength = [0.457, 0.0164, 0.006];

% For plotting bars, define x-positions for each specimen
x = 1:3;

figure('Name','Dual-Y-Axis Bar Chart','NumberTitle','off');

% ------------------------
% 2) BAR FOR AREA (LEFT Y-AXIS)
% ------------------------
yyaxis left
b1 = bar(x - 0.2, areaUnderNotch, 0.4, ...
         'FaceColor',[0.2 0.6 0.8], 'EdgeColor','none');
hold on;
ylabel('Area Under the Notch (mm^2)','FontWeight','bold');

% Label specimens on x-axis
xticks(x);
xticklabels(specimens);
xlabel('Type of Specimen','FontWeight','bold');

% Adjust y-limits so bars fit nicely
ylim([0, 90]);  % Just above 91.4112 for clarity

% ------------------------
% 3) BAR FOR IMPACT (RIGHT Y-AXIS)
% ------------------------
yyaxis right
b2 = bar(x + 0.2, notchImpactStrength, 0.4, ...
         'FaceColor',[0.8 0.4 0.4], 'EdgeColor','none');
ylabel('Notch Impact Strength (Nm/mm^2)','FontWeight','bold');

% Adjust y-limits so the tallest bar (0.375) is visible
ylim([0, 0.4]);

% Ensure the x-limits accommodate the bar shifts
xlim([0.5, 3.5]);

% ------------------------
% 4) FINAL TOUCHES
% ------------------------
title('Area Under the Notch vs. Notch Impact Strength','FontSize',12,'FontWeight','bold');
legend([b1, b2], {'Area Under Notch','Notch Impact Strength'}, 'Location','northoutside');
grid on;  % optional for readability
