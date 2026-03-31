close all;
clear all;

N = 5; %number of states
T = 1000000; %number of time steps

K = 0.1;
a = 0.04;
b = 0.16;

n = 5; %initial state for Markov Chain

for t = 1:T %time loop
     
   ntemp = n;
   pn = K*exp(a*n); %transition up
   qn = K*exp(b*(n-1)); %transition down

   

   r = rand(); %uniform U(0,1)
   if(ntemp>1 && ntemp < N) %if in middle states
       if(r < pn)
          n = ntemp+1; %go up
       elseif(r < pn + qn)
          n = ntemp-1; %go down
       end
   end
   if(ntemp == 1) %if in state 1
       if(r<pn)
           n = 2;
       end
   end
   if(ntemp == N) %if in state N
       if(r<qn)
           n = ntemp-1;
       end
   end
       
   en(t) = n;

end

%calculate stationary distribution from detailed balance calculation
is = 1:N; 
pie = exp((a-b)*is.*(is-1)/2)
C = sum(pie);
pie = pie/C;

pn = K*exp(a*is); %vector of pn's
qn = K*exp(b*(is-1)); %vector of qn's

%define probability transition matrix
p = [1-pn(1) pn(1) 0 0 0;...
    qn(2) 1-pn(2)-qn(2) pn(2) 0 0;...
    0 qn(3) 1-pn(3)-qn(3) pn(3) 0 ;...
    0 0 qn(4) 1-pn(4)-qn(4) pn(4); ...
    0 0 0 qn(5) 1-qn(5)];

[ve,lambda] = eigs(p',1); %find eigenvector of p^T
ve = ve/sum(ve) %normalize eigenvector

%plot
plot(en)
set(gca,'FontSize',16,'FontName','Helvetica');
grid on;
box on;
ylim([0 N])

figure;
histogram(en,'Normalization','probability')
set(gca,'FontSize',16,'FontName','Helvetica');
xlim([0.5 5.5])
hold on
plot(is,pie,'-','LineWidth',2);
plot(is,ve,'bx','MarkerSize',10,'LineWidth',4);
ylim([0 0.4])
box on
grid on


