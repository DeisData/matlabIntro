function out = center(data, desired)
    %CENTER Center data around a desired value
    %
    %    center(data, desired)
    % 
    % Returns a new array containing the value in data
    % centered around the desired value
    
    out = (data - mean(data(:))) + desired;
end