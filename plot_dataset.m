function plot_dataset(file_name, plot_switch)
    %PLOT_DATASET Perform analysis for a named file.
    %  create figures and display plots if plot_switch = 0
    % or save disk if plot_switch = 1.
    %
    % Example:
    %   plot_dataset('data/inflammation-01.csv', 0 )
    
    disp(file_name)
    
    % use the replace command to get our image names
    img_name = replace(file_name, '.csv','.png')
    
    % generate path to data file and to image file
    file_name = fullfile('data',file_name);
    img_name = fullfile('results',img_name);
    
    %disp(file_name)
    %disp(img_name)
    
    
    % load some data
    patient_data = readmatrix(file_name);

    % plot average inflammation per day
    % Creating figures
    if plot_switch == 1
        figure('visible','off')
    else
        figure('visible','on')
    end
    
    plot(mean(patient_data, 1))
    title('Daily average inflammation')
    xlabel('Day of trial')
    ylabel("Inflammation")

    
    % close the figure
    if plot_switch == 1
        % Save plot in results
        print(img_name,'-dpng')
        close()
    end
end
    