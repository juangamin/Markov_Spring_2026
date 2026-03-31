close all;
clear all;

a = 0.50;

died = 0;
for samples = 1:1000000

x = 1;
gen = 500;

size = 1;
for t = 1:gen
    x = 2*binornd(x,1-a);
    xs(t) = x;
    size = size + x;
    if(x == 0 || size > 3)
        break
    end
end

sis(samples) = size;

end

sum(sis == 3)/length(sis)