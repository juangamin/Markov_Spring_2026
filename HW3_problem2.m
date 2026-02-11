clear all;
close all;

%matrix p
p = [9/10 1/10 0; 0 7/8 1/8; 2/5 0 3/5];
mpower(p,50)

%simulation of Markov chain starting at 1
x = 1; %X_0

for t = 1:50000
    u = rand();
    xtemp = x;
    if(xtemp == 1 && u > 9/10) 
        x = 2; 
    end
    if(xtemp == 2 && u > 7/8) 
        x = 3; 
    end
    if(xtemp == 3 && u > 3/5) 
        x = 1; 
    end
xs(t) = x;
end

frac = sum(xs == 1)/50000

%simulation of Markov chain starting at 2
x = 2; %X_0

for t = 1:50000
    u = rand();
    xtemp = x;
    if(xtemp == 1 && u > 9/10) 
        x = 2; 
    end
    if(xtemp == 2 && u > 7/8) 
        x = 3; 
    end
    if(xtemp == 3 && u > 3/5) 
        x = 1; 
    end
xs(t) = x;
end

frac = sum(xs == 1)/50000

