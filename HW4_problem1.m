clear all;
close all;

N = 100000;

for i = 1:N

        x = 10;
        p = 0.35;
        q = 0.4;
        s = 1-p-q;
        
        while(x>0)
            r = rand();
            if(r < s) ret(i) = x; x = 0;
            end
            if(r < s+p && r> s) x = x+1;
            end
            if(r > p+s) x = x-1;
            end
        end
end
mean(ret)