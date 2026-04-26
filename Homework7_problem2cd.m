clear all;
close all;


%%%%%%%%%%%%%%%%%%%% Part c

lambda = 3;

T = 0;
% Team A (blue)
i = 1;
while (T < 48)
    r = rand();
    t = -(1/lambda)*log(r);
    T = T+t;
    Tsa(i) = T;
    i = i+1;
end

T = 0;
% Team B (red)
i = 1;
while (T < 48)
    r = rand();
    t = -(1/lambda)*log(r);
    T = T+t;
    Tsb(i) = T;
    i = i+1;
end

stem(Tsa, ones(size(Tsa)),  'b')
hold on
stem(Tsb, ones(size(Tsb)), 'r')
xlim([0, 48])
set(gca,'FontSize',16,'FontName','Helvetica');
box on;
xlabel('t')
ylim([0, 1.1])
title('Separate Poisson Processes')


%%%%%%%%%%%%%%%%%%%% Part d

clear all
lambda = 6; %total rate, A + B

T = 0;
ia = 1;
ib = 1;
while (T < 48)
    r = rand();
    t = -(1/lambda)*log(r);
    T = T+t;
    r = rand();
    if(r < 0.5)
         Tsa(ia) = T;
         ia = ia + 1;
    else
        Tsb(ib) = T;
        ib = ib + 1;
    end
end

figure
stem(Tsa, ones(size(Tsa)),  'b')
hold on
stem(Tsb, ones(size(Tsb)), 'r')
xlim([0, 48])
set(gca,'FontSize',16,'FontName','Helvetica');
box on;
xlabel('t')
ylim([0, 1.1])
title('One Poisson Processes, then thinned')