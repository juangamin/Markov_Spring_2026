clear all;
close all;

M = 100000; % number of games
lambda = 3;

ties = 0;
for i = 1:M

    N = poissrnd(2*lambda*48);
    NA = binornd(N,0.5);
    NB = N - NA;

    D = 2*(NA-NB);
    Ds(i) =  D;
    ties = ties + (NA==NB);
end

mean(Ds)
var(Ds)

ptie = ties/M