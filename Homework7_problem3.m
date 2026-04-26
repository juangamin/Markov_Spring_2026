clear all;
close all;

lambdamax = 0.5*17;

T = 0;
i = 1;
while(T < 120)
    r1 = rand();
    t = -log(r1)/lambdamax;
    r2 = rand();
    T = T+t;
    if(r2 < 0.5*(1 + (T/30)^2)/lambdamax)
        Ts(i) = T;
        i = i+1;
    end
end
figure;
stem(Ts,ones(1,length(Ts)))
set(gca,'FontSize',16,'FontName','Helvetica');
title('stem plot of case report times')
xlabel('t')
box on


figure;
histogram(Ts,120)
set(gca,'FontSize',16,'FontName','Helvetica');
title('histogram: cases per day')
xlabel('t')
box on
grid on

length(Ts)
