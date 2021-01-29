%% CREATING FUNCTIONS: How can we teach matlab to do new things?

% A function can have multiple inputs and outputs (or none!)
% A function must be saved as its own file with .m extension
% A function must have the same file name as the function defined in it.




%%
% Trying out center.m on our data

data = readmatrix('data/inflammation-01.csv')


%% try our function center on the data
centered = center(data(:), 0)

%% Let's look at some simple statistics
disp([min(data(:)), mean(data(:)), max(data(:))])
disp([min(centered(:)), mean(centered(:)), max(centered(:))])

%%
std(data(:))-std(centered(:))
