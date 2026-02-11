

clear all;
close all;

%matrix p
p = [1/2 1/2 0 0 0 0; 0 1/2 1/2 0 0 0; 1/3  0 1/3 1/3 0 0; 0 0 0 1/2 1/2 ...
     0; 0 0 0 0 0 1; 0 0 0 0 1 0];
mpower(p,5)

for k = 1:1000000

%simulation of Markov chain starting at 1
x = 1; %X_0

    for t = 1:5
        u = rand();
        xtemp = x;
        if(xtemp == 1 && u > 1/2) 
            x = 2; 
        end
        if(xtemp == 2 && u > 1/2) 
            x = 3; 
        end
        if(xtemp == 3 && u <1/3) 
            x = 1; 
        end
        if(xtemp == 3 && u > 2/3) 
            x = 4; 
        end
        if(xtemp == 4 && u > 1/2) 
            x = 5; 
        end
        if(xtemp == 5) 
            x = 6; 
        end
        if(xtemp == 6) 
            x = 5; 
        end
    finalstate(k) = x;
    end

end

frac = sum(finalstate == 4)/1000000


