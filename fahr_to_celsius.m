function ctemp = fahr_to_celsius(ftemp)
    %FAHR_TO_CELSIUS Convert Farhenheit to Celsius
    
    ktemp = fahr_to_kelvin(ftemp);
    ctemp = kelvin_to_celsius(ktemp);
end