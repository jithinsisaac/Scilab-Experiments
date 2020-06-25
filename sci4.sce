clc;
clear;



t = 0:0.0001:1;

subplot(3,1,1);
Am=10;
fm=10;
Vm= Am*sin(2*%pi*fm*t);
plot(t,Vm);
xtitle('Message signal','Time','Amplitude');


subplot(3,1,2);
t = 0:0.00005:0.1;
Ac=10;
fc=1000;
Vc= Ac*sin(2*%pi*fc*t);
plot(t,Vc);
xtitle('Carrier signal','Time','Amplitude');


subplot(3,1,3);
Am=10;
fm=10;
Vam= 1;
plot(t,Vm);
xtitle('AM Output','Time','Amplitude');
