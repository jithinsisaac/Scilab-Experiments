clc;
clear;

Am=10;
fm=10;

t = 0:0.01:1;

Vm= Am*sin(2*%pi*fm*t);

plot(t,Vm);
xtitle('Message signal',' Time(t)','Amplitude');
