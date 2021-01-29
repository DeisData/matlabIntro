%% Plot our data! Develope code to automate inflammation analysis
% Use variable plot_switch to control interactive plotting
% vs saving image to disk
%    plot_switch = 0 : show plots interatively
%    plot_switch = 1 : save plots to disk

% use dir and a wildcard * to find our data files
% * wildcard can represent 0 to many characters

files = dir('data/inflammation-*.csv')

% see just the first file
% files(1).name
% replace(files(1).name, '.csv','.png')

%%
for i = 1:length(files)
    file_name = files(i).name;
    
    % Process each data set, open the figures
    plot_dataset(file_name, 0);
    
end

