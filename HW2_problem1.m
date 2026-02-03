close all;
clear all;

gamma = 4;
x0 = 10;

N = 10^2;
w = rand(N,1);
samples_100 = x0 * w.^(1/(1-gamma)); 

tiledlayout(1,3)

nexttile
histogram(samples_100,200,'Normalization','PDF')
set(gca,'FontSize',16,'FontName','Helvetica');
box on;
grid on;
xlim([0 60])

hold on

xs = 10:0.01:60;
plot(xs,(gamma-1)*x0^(gamma-1)*xs.^(-gamma),'-r','LineWidth',2)
xlabel('x')
ylabel('f(x)')
title('N = 100')

N = 10^3;
w = rand(N,1);
samples_100 = x0 * w.^(1/(1-gamma)); 

nexttile
histogram(samples_100,200,'Normalization','PDF')
set(gca,'FontSize',16,'FontName','Helvetica');
box on;
grid on;
xlim([0 60])

hold on

xs = 10:0.01:60;
plot(xs,(gamma-1)*x0^(gamma-1)*xs.^(-gamma),'-r','LineWidth',2)
xlabel('x')
ylabel('f(x)')
title('N = 1000')

N = 10^4;
w = rand(N,1);
samples_100 = x0 * w.^(1/(1-gamma)); 

nexttile
histogram(samples_100,200,'Normalization','PDF')
set(gca,'FontSize',16,'FontName','Helvetica');
box on;
grid on;
xlim([0 60])

hold on

xs = 10:0.01:60;
plot(xs,(gamma-1)*x0^(gamma-1)*xs.^(-gamma),'-r','LineWidth',2)
xlabel('x')
ylabel('f(x)')
title('N = 10000')