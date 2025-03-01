% Data
obs_no = 1:95; % Observation numbers
force_kN = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10.5, 11, 11.5, 12, 12.5, 13, 13.5, 14, 14.5, 15, 15.5, 16, 16.5, 17, 17.5, 18, 18.5, 19, 19.5, 20, 20.5, 21, 21.5, 22, 22.5, 23, 23.5, 24, 24.5, 25, 25.5, 26, 26.5, 27, 27.5, 28, 28.5, 29, 29.5, 30, 30.5, 31, 31.5, 32, 32.5, 33, 32.5, 33.5, 34, 34.5, 34, 35, 34.5, 35, 36, 36.5, 36, 37, 36.5, 37, 36.5, 37, 37.5, 36.5, 37, 36.5, 36, 37, 36.5, 36, 36, 35.5, 35, 34.5, 34, 33, 32.5, 32, 31.5, 30, 29.5, 29, 28.5, 28];

extensometer_reading_mm = [0, 0.008, 0.011, 0.016, 0.02, 0.021, 0.027, 0.029, 0.032, 0.035, 0.038, 0.04, 0.042, 0.044, 0.046, 0.048, 0.049, 0.05, 0.052, 0.054, 0.056, 0.06, 0.062, 0.0632, 0.064, 0.065, 0.067, 0.068, 0.07, 0.073, 0.076, 0.076, 0.076, 0.078, 0.079, 0.08, 0.083, 0.084, 0.086, 0.087, 0.089, 0.09, 0.092, 0.094, 0.096, 0.097, 0.498, 0.532, 0.609, 0.664, 0.692, 0.848, 0.91, 0.976, 1.094, 1.101, 1.374, 1.346, 1.472, 1.479, 1.484, 1.484, 1.484, 1.484, 1.484, 1.484, 1.484, 1.485, 1.485, 1.485, 1.485, 1.486, 1.486, 1.486, 1.486, 1.486, 1.486, 1.486, 1.486, 1.486, 5.593, 5.799, 5.803, 6.35, 6.578, 7.101, 7.53, 8.101, 8.32, 8.75, 9.101, 9.53, 10.00];

strain = [0, 0.00016, 0.00022, 0.00032, 0.0004, 0.00042, 0.00054, 0.00058, 0.00064, 0.0007, 0.00076, 0.0008, 0.00084, 0.00088, 0.00092, 0.00096, 0.00098, 0.001, 0.00104, 0.00108, 0.00112, 0.0012, 0.00124, 0.00126, 0.00128, 0.0013, 0.00134, 0.00136, 0.0014, 0.00146, 0.00152, 0.00152, 0.00152, 0.00156, 0.00158, 0.0016, 0.00166, 0.00168, 0.00172, 0.00174, 0.00178, 0.0018, 0.00184, 0.00188, 0.00192, 0.00194, 0.00996, 0.01064, 0.01218, 0.01328, 0.01384, 0.01696, 0.0182, 0.0195, 0.02188, 0.02202, 0.02748, 0.02692, 0.02944, 0.02958, 0.02968, 0.02968, 0.02968, 0.02968, 0.02968, 0.02968, 0.02968, 0.0297, 0.0297, 0.0297, 0.0297, 0.02972, 0.02972, 0.02972, 0.02972, 0.02972, 0.02972, 0.02972, 0.02972, 0.02972, 0.11186, 0.111598, 0.111606, 0.127, 0.13156, 0.14202, 0.1506, 0.16202, 0.1664, 0.175, 0.182, 0.19, 0.2];

stress_MPa = [0, 14.5, 29, 43.51, 58.01, 72.51, 87.01, 101.51, 116.02, 130.52, 145.02, 152.27, 159.52, 166.81, 174.06, 181.32, 188.57, 195.82, 203.07, 210.31, 217.56, 224.83, 232.16, 239.41, 246.65, 253.90, 263.92, 268.27, 275.52, 282.85, 290.10, 297.67, 304.61, 311.62, 318.87, 326.12, 334.63, 342.88, 348.84, 355.38, 362.63, 369.89, 377.14, 384.39, 391.64, 398.89, 406.15, 413.40, 420.66, 427.91, 435.16, 442.41, 449.67, 456.92, 464.17, 471.42, 478.67, 471.42, 485.93, 493.18, 500.43, 493.18, 507.69, 500.43, 507.69, 522.19, 529.45, 522.19, 536.70, 529.45, 536.70, 529.45, 536.70, 543.95, 529.45, 536.70, 529.45, 522.19, 536.70, 529.45, 522.19, 522.19, 514.94, 507.69, 500.43, 493.18, 478.67, 471.42, 464.17, 456.92, 435.16, 427.91, 420.66, 413.40, 406.15];

% Plot
figure;
plot(strain, stress_MPa, '-o', 'LineWidth', 1.5, 'MarkerSize', 4);
xlabel('Strain (mm/mm)');
ylabel('Stress (MPa)');
title('Stress vs. Strain Diagram');
grid on;

% Improve readability
set(gca, 'FontSize', 12);
