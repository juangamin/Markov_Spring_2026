close all;
clear all;

N = 1000000

figure('Units','pixels','Position',[100 100 1400 500])
tiledlayout(1,3)

%Inverse Transform Sampling
nexttile

tic
for i = 1:N
     u = rand();
     f = @(x) 1 -(1+x)*exp(-x) - u;
     x = fzero(f,[0 100]);
     samp(i) = x;
end
toc

histogram(samp,200,'Normalization','PDF')
set(gca,'FontSize',16,'FontName','Helvetica');
box on;
grid on;
xlim([0 10])
hold on;
xs = 0:0.01:10;
plot(xs,xs.*exp(-xs),'-r','LineWidth',2)
title('Inverse Sampling')
xlabel('x')
ylabel('f(x)')

%Acceptance-Rejection
nexttile

tic 
accepted = 0;
while(accepted < N)
   w = rand();
   x = -2*log(u);
   u = rand();
   if u < 2*x.*exp(-x/2)/(4/exp(1))
        sampacc(accepted+1) = x;
        accepted = accepted + 1;
   end
end
toc

histogram(sampacc,200,'Normalization','PDF')
set(gca,'FontSize',16,'FontName','Helvetica');
box on;
grid on;
xlim([0 10])
hold on;
xs = 0:0.01:10;
plot(xs,xs.*exp(-xs),'-r','LineWidth',2)
title('Acceptance-Rejection')
xlabel('x')
ylabel('f(x)')

%Sum of two exponentials
nexttile

tic
us1 = rand(N,1);
us2 = rand(N,1);
samps = -log(us1.*us2);
toc

histogram(samps,200,'Normalization','PDF')
set(gca,'FontSize',16,'FontName','Helvetica');
box on;
grid on;
xlim([0 10])
hold on;
xs = 0:0.01:10;
plot(xs,xs.*exp(-xs),'-r','LineWidth',2)
title('Sum of two exponentials')
xlabel('x')
ylabel('f(x)')
