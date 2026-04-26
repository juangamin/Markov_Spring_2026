clear all;
close all;

tiledlayout(2,2);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
nexttile

N = 100;
dt = 0.01; %time step
T = 10;   %total time
nsteps = T/dt; %number of time steps

x = ones(1,N) + (rand(1,N) > 1/3); %vector of initial states

for t = 1:nsteps %time loop
   lam = ones(1,N);
   r = rand(1,N); %vector of N random numbers, one for each particle
   jump = (r < dt*lam); %indices of the particles that do jump
   x(jump) = mod(x(jump)+1,4); %modify the states that jumped
   f(t) = sum(x==1)/N; %calculate fraction in state 1
end

%plot numerics and theory
te = dt*(1:nsteps);
plot(te,f,'r.')
hold on
plot(te, 1/4 - (1/3)*exp(-te).*sin(te)+(1/6)*exp(-te).*cos(te)...
    -(1/12)*exp(-2*te),'-k','LineWidth',2)
ylim([0 0.5])
xlabel('Time')
ylabel('Fraction in state 1')
set(gca,'FontSize',16,'FontName','Helvetica');
grid on;
box on;
title('N = 100')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
nexttile

N = 1000;
dt = 0.01; %time step
T = 10;   %total time
nsteps = T/dt; %number of time steps

x = ones(1,N) + (rand(1,N) > 1/3); %vector of initial states

for t = 1:nsteps %time loop
   lam = ones(1,N);
   r = rand(1,N); %vector of N random numbers, one for each particle
   jump = (r < dt*lam); %indices of the particles that do jump
   x(jump) = mod(x(jump)+1,4); %modify the states that jumped
   f(t) = sum(x==1)/N; %calculate fraction in state 1
end

%plot numerics and theory
te = dt*(1:nsteps);
plot(te,f,'r.')
hold on
plot(te, 1/4 - (1/3)*exp(-te).*sin(te)+(1/6)*exp(-te).*cos(te)...
    -(1/12)*exp(-2*te),'-k','LineWidth',2)
ylim([0 0.5])
xlabel('Time')
ylabel('Fraction in state 1')
set(gca,'FontSize',16,'FontName','Helvetica');
grid on;
box on;
title('N = 1000')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
nexttile

N = 10000;
dt = 0.01; %time step
T = 10;   %total time
nsteps = T/dt; %number of time steps

x = ones(1,N) + (rand(1,N) > 1/3); %vector of initial states

for t = 1:nsteps %time loop
   lam = ones(1,N);
   r = rand(1,N); %vector of N random numbers, one for each particle
   jump = (r < dt*lam); %indices of the particles that do jump
   x(jump) = mod(x(jump)+1,4); %modify the states that jumped
   f(t) = sum(x==1)/N; %calculate fraction in state 1
end

%plot numerics and theory
te = dt*(1:nsteps);
plot(te,f,'r.')
hold on
plot(te, 1/4 - (1/3)*exp(-te).*sin(te)+(1/6)*exp(-te).*cos(te)...
    -(1/12)*exp(-2*te),'-k','LineWidth',2)
ylim([0 0.5])
xlabel('Time')
ylabel('Fraction in state 1')
set(gca,'FontSize',16,'FontName','Helvetica');
grid on;
box on;
title('N = 10000')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
nexttile

N = 100000;
dt = 0.01; %time step
T = 10;   %total time
nsteps = T/dt; %number of time steps

x = ones(1,N) + (rand(1,N) > 1/3); %vector of initial states

for t = 1:nsteps %time loop
   lam = ones(1,N);
   r = rand(1,N); %vector of N random numbers, one for each particle
   jump = (r < dt*lam); %indices of the particles that do jump
   x(jump) = mod(x(jump)+1,4); %modify the states that jumped
   f(t) = sum(x==1)/N; %calculate fraction in state 1
end

%plot numerics and theory
te = dt*(1:nsteps);
plot(te,f,'r.')
hold on
plot(te, 1/4 - (1/3)*exp(-te).*sin(te)+(1/6)*exp(-te).*cos(te)...
    -(1/12)*exp(-2*te),'-k','LineWidth',2)
ylim([0 0.5])
xlabel('Time')
ylabel('Fraction in state 1')
set(gca,'FontSize',16,'FontName','Helvetica');
grid on;
box on;
title('N = 100000')