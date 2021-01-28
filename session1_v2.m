%% Session 1 script

% This is a comment

%% WORKING WITH VARIABLES
% Let's write a value to a variable
weight_kg = 55;
% A semicolon saves your program time
% Without the semicolon, the value is displayed
weight_kg = 55

% variable names:
%   must begin with a letter
%   case sensitive
%   can have numbers or underscores

% disp is the display function
disp(weight_kg)

% we can store multiple values as an array
a = [1 , 2, 3]

% create a matrix using semi-colons to separate rows
b = [a ; 4, 5, 6]

% an array must have the same type of values
% but we do have conversion tools 
num2str(a)

% Let's do math with the value stored in a variable
weight_lb = 2.2 * weight_kg

% Notice if we change the value of weight in kg . . . 
weight_kg = 59.3

% Weight in lb does not update.  It does not 
% remember how it was calculated like in Excel
% Only the value is stored
disp(weight_lb)


%%  To see our workspace
who

% to clear or delete a variable
clear weight_lb

% to clear the whole workspace
clear

%% LOAD data from a comma-separated value file

% we used the documentation search to find out about
% readmatrix() function
patient_data = readmatrix('data/inflammation-01.csv')

% Matrix dimensions
size(patient_data)

% Type of data in matrix
class(patient_data)



%% ARRAYS IN MATLAB.  ACCESS SUBSETS OF DATA

% let's make magic matix
M = magic(8)

% The general format for accessing
% matrix elements is matrixname(rows, columns)

% if we want to see a single element of the matrix
M(5,6)

% Row 5 and all columns :
M(5, :)

% Row 1 through 4 , and all columns
M(1:4, :)

M(: , 6:end) % all rows and column 6 to end

% We can count by increments start:by increments:end
2:3:20 % 2 to 20 by 3's

% rows 2 to 8 by 3's, and all columns
M(2:3:end, :)



%% LET'S GET BACK TO DATA!
disp(patient_data)

help mean % to access documentation

% We can look at different averages of our data
mean(patient_data, 'all') % a single mean for the whole matrix
mean(patient_data, 1) % average across all the patients (1-rows) 
mean(patient_data, 2) % average across all the days (2-cols) for each patient

%% KEEP TRACK OF OUR CODE
commandhistory
% we can select the command history and right-click to Create Script
% (Change your layout if it is not showing)


%% PLOTTING IN MATLAB

% heat map of our data
imagesc(patient_data)
title('Inflammation')
xlabel('Day of trial')
ylabel('Patient number')


%% Plot the average daily inflammation
plot(mean(patient_data,1))
title('Daily average inflammation')
xlabel('Day of trial')
ylabel('Inflammation')

%% Plot the minimum inflammation per day
plot(min(patient_data, [], 1))
title('Minimum Daily inflammation')
xlabel('Day of trial')
ylabel('Inflammation')

%% Plot the maximum inflammation per day
plot(max(patient_data, [], 1))
title('Maximum Daily inflammation')
xlabel('Day of trial')
ylabel('Inflammation')

%% Subplots for max min and avg daily inflammation
subplot(1, 2, 1) % arguments are rows, columns, position
plot(max(patient_data, [], 1))
title('Maximum Daily inflammation')
xlabel('Day of trial')
ylabel('Inflammation')

subplot(1, 2, 2)
plot(min(patient_data, [], 1))
title('Minimum Daily inflammation')
xlabel('Day of trial')
ylabel('Inflammation')



