%% Repeating with loops

% bad coding! don't copy
word = 'led'
disp(word(1))
disp(word(2))
disp(word(3))
disp(word(4))

%% LOOP is a better approach
word = 'led'
for letter = 1:length(word)
    disp(word(letter))
end

%% In general, the format of a for loop
% for variable = collection
%    do things with variable
% end

%%  Initialize and build on a value
total_sum = 0
x = [1, 5, -9, 2, 0, -1]
for num = 1:length(x)
    total_sum = total_sum + x(num)
end
disp(['The total sum is: ', num2str(total_sum)])


%%  Analyze patient data from multiple files

% use dir command to get a structure array with the names of files
% use a wildcard * for pattern matching zero to many character

files = dir('data/inflammation-*.csv')
disp(files)

% to access the name of the first file
files(1).name




