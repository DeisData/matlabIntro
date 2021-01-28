%PLOT_ALL Developing code to automate inflammation analysis
%  Save plots to statistics to disk
%  Use variable plot_switch to control interactive plotting
%  vs saving image to disk.
%     plot_switch = 0: show plots interactively
%     plot_switch = 1: save plots to disk

plot_switch = 0;

files = dir('data/inflammation-*.csv');

for i = 1:length(files)
    file_name = files(i).name;
    disp(file_name)
    
    img_name = replace(file_name, '.csv','.png');
    %disp(img_name)

    % Generate path to data file and image file
    file_name = fullfile('data', file_name);
    img_name = fullfile('results',img_name);
    
    %PLOT_PATIENT1  Save plots of inflammation statistics
    patient_data = readmatrix(file_name);

    % create figures depending on plot_switch
    if plot_switch == 1
        figure('visible','off')
    else
        figure('visible','on')
    end
    
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

    
    if plot_switch == 1
       % save plot in 'results' folder as png image
       print(img_name,'-dpng')
       close()
    end



end