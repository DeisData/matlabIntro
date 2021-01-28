%PLOT_PATIENT1  Save plots of inflammation statistics
patient_data = readmatrix('data/inflammation-01.csv');

figure('visible','off')

% Plot average inflammation per day
subplot(1, 3, 1)
plot(mean(patient_data, 1))
title('Daily average inflammation')
xlabel('Day of trial')
ylabel('Inflammation')

% Plot of maximums
subplot(1, 3, 2)
plot(max(patient_data, [], 1))
title('Max inflammation')
xlabel('Day of trial')
ylabel('Inflammation')

% Plot of minimums
subplot(1, 3, 3)
plot(min(patient_data, [], 1))
title('Min inflammation')
xlabel('Day of trial')
ylabel('Inflammation')

% save plot in 'results' folder as png image
print('results/inflammation-01','-dpng')

close()

