clear all;
close all;

p = [0 1 0 0 0; 1/3 0 2/3 0 0; 0 1/2 0 1/2 0; 0 0 2/3 0 1/3; 0 0 0 1 0];

q0 = [0 0 1 0 0]';

p50 = mpower(p,50);

q50 = p50*q0;

pistd = [1 3 4 3 1]'/12;

figure

is = [0 1 2 3 4];
plot(is, q50,'o-');
hold on;
plot(is,pistd,'x-')
box on
grid on
xlabel('i')
set(gca,'FontSize',16,'FontName','Helvetica');