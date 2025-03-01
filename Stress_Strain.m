% Data
force_kN = [0, 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0, 10.5, 11.0, 11.5, 12.0, 12.5, 13.0, 13.5, 14.0, 14.5, 15.0, 15.5, 16.0, 16.5, 17.0, 17.5, 18.0, 18.5, 19.0, 19.5, 20.0, 20.5, 21.0, 21.5, 22.0, 22.5, 23.0, 23.5, 24.0, 24.5, 25.0, 25.5, 26.0, 26.5, 27.0, 27.5, 28.0, 28.5, 29.0, 29.5, 30.0, 30.5, 31.0, 31.5, 32.0, 32.5, 33.0, 32.5, 33.5, 34.0, 34.5, 34.0, 35.0, 34.5, 35.0, 36.0, 36.5, 36.0, 37.0, 36.5, 37.0, 36.5, 37.5, 36.5, 37.0, 36.5, 37.0, 36.5, 36.0, 37.0, 36.5, 36.0, 36.0, 35.5, 35.0, 34.5, 34.0, 33.0, 32.5, 32.0, 31.5, 30.0, 29.5, 29.0, 28.5, 28.0];
displacement_mm = [0, 0.008, 0.011, 0.016, 0.020, 0.021, 0.027, 0.029, 0.032, 0.035, 0.038, 0.040, 0.042, 0.044, 0.046, 0.048, 0.049, 0.050, 0.052, 0.054, 0.056, 0.060, 0.062, 0.0632, 0.064, 0.065, 0.067, 0.068, 0.070, 0.073, 0.076, 0.076, 0.077, 0.078, 0.079, 0.080, 0.083, 0.084, 0.086, 0.087, 0.089, 0.090, 0.092, 0.094, 0.096, 0.097, 0.099, 0.498, 0.532, 0.609, 0.664, 0.692, 0.848, 0.910, 0.976, 1.094, 1.101, 1.374, 1.346, 1.472, 1.479, 1.484, 1.484, 1.484, 1.485, 5.593, 5.799, 6.576, 7.101, 7.530, 8.101, 8.320, 8.750, 9.101];
strain = [0, 0.00016, 0.00022, 0.00032, 0.00040, 0.00042, 0.00054, 0.00058, 0.00064, 0.00070, 0.00076, 0.00080, 0.00084, 0.00088, 0.00092, 0.00096, 0.00098, 0.00100, 0.00104, 0.00108, 0.00112, 0.00124, 0.00126, 0.00128, 0.00130, 0.00132, 0.00134, 0.00136, 0.00140, 0.00146, 0.00152, 0.00152, 0.00152, 0.00156, 0.00158, 0.00160, 0.00166, 0.00168, 0.00172, 0.00174, 0.00178, 0.00180, 0.00184, 0.00188, 0.00192, 0.00194, 0.00996, 0.01064, 0.01218, 0.01328, 0.01384, 0.01696, 0.01820, 0.01950, 0.02188, 0.02202, 0.02748, 0.02944, 0.02958, 0.02968, 0.02968, 0.11186, 0.11160, 0.12700, 0.13156, 0.14202, 0.16202, 0.16640, 0.17500, 0.18200, 0.19000, 0.20000];
stress_MPa = [0, 14.5, 29.0, 43.51, 58.01, 72.51, 87.01, 101.51, 116.02, 130.52, 145.02, 152.27, 159.52, 166.81, 174.06, 181.32, 188.57, 195.82, 203.07, 210.31, 217.56, 224.83, 232.16, 239.41, 246.65, 253.90, 263.92, 268.27, 275.52, 282.85, 290.10, 297.67, 304.61, 311.62, 318.87, 326.12, 334.63, 342.88, 348.84, 355.38, 362.63, 369.89, 377.14, 384.39, 391.64, 398.89, 406.15, 413.40, 420.66, 427.91, 435.16, 442.41, 449.67, 456.91, 464.17, 471.42, 478.67, 485.92, 493.18, 500.43, 507.68, 514.94, 522.19, 529.44, 536.69, 543.95, 514.94, 507.68, 500.43, 493.18, 478.67, 471.42];

% Plot
figure;
plot(strain, stress_MPa, '-o', 'LineWidth', 1.5, 'MarkerSize', 4);
xlabel('Strain');
ylabel('Stress (MPa)');
title('Stress vs. Strain Diagram');
grid on;

% Improve readability
set(gca, 'FontSize', 12);
