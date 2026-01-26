clear all;
close all;

ns = floor(10.^(1:0.1:5)); %array of values of N

for j = 1:length(ns)  %for loop
    N = ns(j); %set N
    
    xs = rand(N,1); %generate x coordinates
    ys = rand(N,1); %generate y coordinates
    
    intecarlo = sum(ys < xs.^4./(1+xs.^6))/N; %calculate fraction below f
    inn(j) = intecarlo; %store E(N)

end

%plot
plot(ns,inn,'o','MarkerFaceColor','k')
set(gca,'XScale','log')
yline(0.143426,'-r','LineWidth',2)
grid on;
box on;
ylim([0 0.4])
xlabel('N')
ylabel('E(N)')
set(gca,'FontSize',16,'FontName','Helvetica');
