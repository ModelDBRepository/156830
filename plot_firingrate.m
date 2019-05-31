function [] = plot_firingrate()
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function to plot firing rate
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tic 

clc
clear all

format long eng
options = odeset( 'RelTol', 1e-9, 'AbsTol', 1e-9 );

% initial time (negative value indicates the time for steady state)
ti = -100;
% time step (0.0005 s)
dt = 0.5*10^(-3);
% final time 
tf = 300; % 800 for step response
tspan = ti:dt:tf;

% load initial conditons
y0 = LoadInitialConditions; 
% load model parameters
modelparameters = LoadParameters;

AngII100 = [ti:0.01:(tf+1); ti:0.01:(tf+1)]';
AngII100(AngII100(:,1)<0,2) = 0;
AngII100(AngII100(:,1)>0,2) = 0.1;
% for step response comment out the following
%AngII100(AngII100(:,1)>300,2) = 0;

y1 = abs (y0);

% run simuations
[t, y] = ode15s(@odemodel, tspan, y1, options, modelparameters, AngII100);

% sampling the membrane voltage
[tp_fr fr index] = freq(t,y(:,179));

firing_rate = interp1(tp_fr, fr,tspan);

% plot the firing rate
plot(tspan,firing_rate)
ylabel('Firing rate (Hz)');
xlabel('Time (s)');

toc

end


