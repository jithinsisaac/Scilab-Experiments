clc;
clear;

//for i=1:1:5

m1=input('Under Mod - Index: ');
m2=input('Perfect Mod - Index:');
m3=input('Over Mod - Index: ');

//MESSAGE SIGNAL
Am=10;
fm=40;
t=0:0.000001:0.25
mt=Am*sin(2*%pi*fm*t);
subplot(5,1,1);
plot(t,mt);
xtitle('Message signal','time','Amplitude');

//CARRIER SIGNAL
Ac=10;
fc=300;
t=0:0.000001:0.25
ct=Ac*sin(2*%pi*fc*t);
subplot(5,1,2);
plot(t,ct);
xtitle('Carrier signal','time','Amplitude');

//AMPLITUDE MODULATION
t=0:0.000001:0.25;
st=((Ac+m1*Ac*sin(2*%pi*fm*t)).*sin(2*%pi*fc*t));

subplot(5,1,3);
plot(t,st);
xtitle('Amplitude Modulated wave','time','Amplitude');

//AMPLITUDE MODULATION
t=0:0.000001:0.25;
st=((Ac+m2*Ac*sin(2*%pi*fm*t)).*sin(2*%pi*fc*t));

subplot(5,1,4);
plot(t,st);
xtitle('Amplitude Modulated wave','time','Amplitude');

//AMPLITUDE MODULATION
t=0:0.000001:0.25;
st=((Ac+m3*Ac*sin(2*%pi*fm*t)).*sin(2*%pi*fc*t));

subplot(5,1,5);
plot(t,st);
xtitle('Amplitude Modulated wave','time','Amplitude');

end
