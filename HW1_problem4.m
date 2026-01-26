close all;
clear all;

N = 10^5;
for j = 1:N
    T_moe = 60*rand(); %Moe's arrival time
    T_agnes = 60*rand(); %Agnes 
    T_dorothy = 60*rand(); %Dorothy
    T = max([T_moe,T_agnes,T_dorothy]); %time when all three arrived
    times(j) = T;
end

histogram(times,200,'Normalization','PDF')
set(gca,'FontSize',16,'FontName','Helvetica');
box on;
grid on;

hold on

ts = 0:0.01:60;
plot(ts,(1/20)*(ts/60).^2,'-r','LineWidth',2)
xlabel('t')
ylabel('f_T(t)')