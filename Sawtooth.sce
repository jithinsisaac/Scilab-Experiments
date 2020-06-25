close ;
clear all;
clc;
p=100;
t=1:1:p*10;
for n=1:(p/2)
 a(n)=n;
end
for n=(p/2)+1:p
    a(n)=n-p;
end
a1=a
for i=1:9
    a1=[a1 a];
end
plot2d(t,a1);
axis( [ 0 1000 -100 100]);
xtitle('sawtooth sequence', 'amplitude’, 'time');
