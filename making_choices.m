%% MAKING CHOICES with conditional statements

num = 37;

if num > 100
    disp('greater')
else 
    disp('not greater')
end

%% Comparisons in matlab
% > greater than
% < less than
% == is equal to
% != not equal to
% >= great than or equal to
% <= less than or equal to 

%% Test of multiple conditions
 
num = 53;

if num > 0
    disp('number is positive')
elseif num == 0
    disp('number is zero')
elseif num > 50
    % this block will never be execute!
    disp('number is greater than 50')
else
    disp('number is negative')
end

%% COMBINE TESTS WITH AND AND OR

% Example with and (&&)
x = 1;
y = -1;
if ((x > 0) && (y > 0))
    disp('both parts are true')
else
    disp('one part is not true')
end

%% Example with "or" ||
x = -1;
y = 3;
if (x < 0) || (y < 4)
    disp('at least one part is true')
end


%% Combining for loops and conditionals
%  Initialize and build on a value
total_positive_sum = 0;
total_negative_sum = 0;

x = [1, 5, -9, 2, 0, -1];
for num = 1:length(x)
    if x(num) > 0
        total_positive_sum = total_positive_sum + x(num);
    elseif x(num) < 0
        total_negative_sum = total_negative_sum + x(num);
    else
        disp('x element is zero')
    end    
end
disp(['The total positive sum is: ', num2str(total_positive_sum)])
disp(['The total negative sum is: ', num2str(total_negative_sum)])

