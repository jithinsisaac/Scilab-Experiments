clc;
clear;

fm=input('Enter the signal freq: ');
fs1=input('freq for Under sampling: ');
fs2=input('freq for Perfect sampling: ');
fs3=input('freq for Over sampling: ');

t=0:0.001:1
mt=sin(2*%pi*fm*t);
subplot(4,2,1);
plot(t,mt);
xtitle('Message signal','time','Amplitude');

//CASE I: UNDER SAMPLING
//SAMPLING
n = 0:1/fs1:1;
x1 = sin(2*%pi*fm*n);
subplot(4,2,3);
plot2d3(n,x1);  
//RECONSTRUCTION
subplot(4,2,4);
plot(n,x1);

//CASE II: PERFECT SAMPLING
//SAMPLING
n = 0:1/fs2:1;
x2 = sin(2*%pi*fm*n);
subplot(4,2,5);
plot2d3(n,x2);  
//RECONSTRUCTION
subplot(4,2,6);
plot(n,x2);

//CASE III: OVER SAMPLING
//SAMPLING
n = 0:1/fs3:1;
x3 = sin(2*%pi*fm*n);
subplot(4,2,7);
plot2d3(n,x3);  
//RECONSTRUCTION
subplot(4,2,8);
plot(n,x3);

