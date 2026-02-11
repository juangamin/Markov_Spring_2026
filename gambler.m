clear all;
close all;

L = 100;


p = 0.4;
q = 1-p;
r = q/p;
x0 = 60;
(r^L - r^x0)./(r^L-1)

for k = 1:1000

clear xs;

x = x0;
t = 1;

while(1<x && x<L)
    u = rand();
    xtemp = x;
    if(1<xtemp && xtemp<L)
        if(u<p) 
            x = x+1;
        else
            x = x-1;
        end
    end
    t = t+1;
    xs(t) = x;
end

hold on
plot(xs,'-')
ylim([-5 L+5])
drawnow
grid on;
box on;
end



