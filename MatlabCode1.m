% EE3370 Project 1
% MATLAB code for four functions with plots
% Danny Souraphath
% Feb. 27, 2015

clc      % Clear screen 
clear    % Clear all variables
A = 3; f= 1000; omega = 2*pi*f; 
angle = degtorad(33); T=1/f;
t=linspace(-3*T,3*T,1000);
x_t=3*cos(omega*t+angle);
f_t=cos(omega*t).*sin(omega*t); %Added f(t)
subplot(4,1,1)
plot(t,x_t, 'linewidth',2);grid on
subplot(4,1,2)
u_t=heaviside(t);
u_t1=heaviside(t-T); %Added u(t-1) where 1=T
plot(t,u_t, 'linewidth',2);grid on
subplot(4,1,3)
plot(t,x_t.*u_t, 'linewidth',2);grid on
subplot(4,1,4) %Added fourth plot
plot(t,f_t.*u_t1, 'linewidth',2);grid on