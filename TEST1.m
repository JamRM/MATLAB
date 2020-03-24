clc
clear all
close all

%--------------------------------------------------------------------------
t = -10:0.001:10;

imp=t==-3;

v = -2*heaviside(t+1)+2*(t+1).*heaviside(t+1)-2*(t-1).*heaviside(t-1)+heaviside(t-2)-(t-2).*heaviside(t-2)+(t-4).*heaviside(t-4)-(t-5).*heaviside(t-5)+(t-7).*heaviside(t-7)+heaviside(t-7);
subplot(2,1,1)
plot(t,v)
grid on
axis equal 
axis tight
axis([-2 8 -3 4]);
title('V')
xlabel('t(s)') 
ylabel('v(t)') 

y = 2*tripuls(t-1)+tripuls((t-2)/2)+heaviside(t-3)+(t-3).*heaviside(3*t-6);
subplot(2,1,2)
plot(t,y)
hold on
stem (t,imp,'linewidth',1)
hold off
grid on
axis equal 
axis tight
axis([-4 5 -1 3]);
xlabel('t') 
ylabel('y(t)')

%--------------------------------------------------------------------------
figure
a=heaviside(t);
subplot(2,2,1)
plot(t,a,)
grid on
axis([-2 4 -1 2]);

a=heaviside((t-0.5)/3);
subplot(2,2,2)
plot(t,a,)
grid on
axis([-4 4 -1 2]);

subplot(2,2,3)
a=3*heaviside(3-t);
plot(t,a,)
grid on
axis([-3 4 -1 4]);

subplot(2,2,4)
a=5*heaviside(-(3*t+3/5)*1/5);
plot(t,a,)
grid on
axis([-2 2 -1 6]);