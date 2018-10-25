function [Array] = CollatzFunction(n)
    x = n;
    Array = [n];
    while x > 1
        if mod(x,2) == 0
            x = x / 2;
            Array = [Array x];
        else 
            x = 3 * x + 1;
            Array = [Array x];
        end
    end        
end