clear all;
close all;

M = 1000000;

enes = 2.^(2:10); %vector of N's

for i = 1:length(enes) %loop

    n = enes(i);
    samp = zeros(1,M); %to store samples
    parfor j = 1:M %parallel for
       samp(j) = (sum(poissrnd(1,1,n))-n)/sqrt(n); %$Y_n
    end
    
    hist(samp,50)
    s(i) = mean(samp.^3);
    theo(i) = 1/sqrt(n);

end

plot(enes,s,'o')
hold on
plot(enes,theo,'x ')
set(gca,'FontSize',16,'FontName','Helvetica');
set(gca,'YScale','log')
set(gca,'XScale','log')
box on;
grid on;
xlabel('N')
ylabel('S(N)')