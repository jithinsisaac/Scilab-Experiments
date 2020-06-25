//PWM code: IJS:

clc;
clear all;

//Time axis division
t=0:0.001:1; 
 
//Inputing frequencies of Carrier and Message signal
f1=input('Enter frequency of Carrier= ');
f2=input('Enter frequency of message signal= ');
 
//Carrier sawtooth wave
c=sawtooth(2*%pi*f1*t);
subplot(3,1,1);
plot(t,c);
xlabel('Time (sec)');
ylabel('Amplitude (Volts)');
title('Carrier Sawtooth wave');
//grid;
 
//Message signal
m=0.75*sin(2*%pi*f2*t); //Message amplitude must be less than Sawtooth
subplot(3,1,2);
plot(t,m);
xlabel('Time (sec)');
ylabel('Amplitude (Volts)');
title('Message signal wave');

 
n=length(c); //Length of carrier sawtooth is stored to ‘n’
 
for i=1:n    //Comparing Message and Sawtooth amplitudes
    if (m(i)>=c(i))
       pwm(i)=1;
    else
       pwm(i)=0;
    end
end
 
//Output waveform of PWM
subplot(3,1,3);
plot(t,pwm);
xlabel('Time (sec)');
ylabel('Amplitude (Volts)');
title('Output plot of PWM');
axis([0 1 0 2]); //X-Axis varies from 0 to 1 & Y-Axis from 0 to 2


