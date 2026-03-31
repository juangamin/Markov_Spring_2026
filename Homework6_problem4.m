close all;
clear all;

a = 0.49;

died = 0;
for samples = 1:1000 %sample avalanches

    x = 1; %initial particles
    gen = 500; % maximum number of generations allowed
    
    for t = 1:gen
        x = 2*binornd(x,1-a);
        xs(t) = x;
    end
    % hold on
    % plot(xs+0.001)
    % xlabel('Generation')
    % ylabel('Number of particles')
    % set(gca,'FontSize',16,'FontName','Helvetica');
    % grid on;
    % box on;
    
    died = died + (x==0); %counts extinction if x = 0 at the end

end

died/samples  %fraction of extinct avalanches
a/(1-a) %theory