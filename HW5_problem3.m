clear all;
close all;

a = 0.99;




T = 200;

%%%%%%%%%%%%%%%%%%%%%%% N = 100
N = 100;
x = ones(1,N);
for t = 1:T
    r = rand(1,N);
    xtemp = x;
    x(find(xtemp == 1 & r<a)) = 2; % 1 -> 2
    
    x(find(xtemp == 2 & r<a)) = 1; % 2 -> 1
    x(find(xtemp == 2 & r>=a)) = 3;  % 2 -> 3
    
    x(find(xtemp == 3 & r>=a)) = 2;  % 3 -> 2

    frac(t) = sum(x==1)/N;
end

%%%%%%%%%%%%%%%%%%%%%%% N = 1000
N = 1000;
x = ones(1,N);
for t = 1:T
    r = rand(1,N);
    xtemp = x;
    x(find(xtemp == 1 & r<a)) = 2; % 1 -> 2
    
    x(find(xtemp == 2 & r<a)) = 1; % 2 -> 1
    x(find(xtemp == 2 & r>=a)) = 3;  % 2 -> 3
    
    x(find(xtemp == 3 & r>=a)) = 2;  % 3 -> 2

    frac(t) = sum(x==1)/N;
end

%%%%%%%%%%%%%%%%%%%%%%% N = 10000
N = 10000;
x = ones(1,N);
for t = 1:T
    r = rand(1,N);
    xtemp = x;
    x(find(xtemp == 1 & r<a)) = 2; % 1 -> 2
    
    x(find(xtemp == 2 & r<a)) = 1; % 2 -> 1
    x(find(xtemp == 2 & r>=a)) = 3;  % 2 -> 3
    
    x(find(xtemp == 3 & r>=a)) = 2;  % 3 -> 2

    frac(t) = sum(x==1)/N;
end

plot(frac,'o-')
grid on;
box on;

te = 1:T;
theory = 1/3 + (0.70530)^2*(-0.985038).^te + (0.41135)^2*(0.985038).^te;

hold on
plot(theory)