clc;
close;
clear;
t= 0:0.001:1;

fm = input('Enter the modulating signal frequency = ');
fs1 = input('Enter Sampling Frequency < 2* Modulating Signal Frequency = ');
fs2 = input('Enter Sampling Frequency = 2* Modulating Signal Frequency = ');
fs3 = input('Enter Sampling Frequency > 2* Modulating Signal Frequency = ');
 
//Input message frequency
x = sin(2*%pi*fm*t);
subplot(4,2,1);
plot(t,x);
xlabel('Time (sec)');
ylabel('Amplitude');
title('Message signal');
 
//Sampling at fs<2fm i.e Undersapmling
n = 0:1/fs1:1;
x1 = sin(2*%pi*fm*n);
subplot(4,2,3);
plot2d3(n,x1);  //plot2d3 function is used to get sampled output
xlabel('Time (sec)');
ylabel('Amplitude');
title('Undersampled Signal fs<2fm');
subplot(4,2,4);
plot(n,x1);  //plot function is used to get continuous time output
xlabel('Time (sec)');
ylabel('Amplitude');
title('Reconstructed signal for Undersampling fs<<2fm');
 
 
//Sampling at fs=2fm i.e Nyquist rate sapmling
n = 0:1/fs2:1;
x2 = sin(2*%pi*fm*n);
subplot(4,2,5);
plot2d3(n,x2);
xlabel('Time (sec)');
ylabel('Amplitude');
title('Sampling at Nyquist rate fs=2fm');
subplot(4,2,6);
plot(n,x2);
xlabel('Time (sec)');
ylabel('Amplitude');
title('Reconstructed signal for Nyquist Rate sampling fs=2fm');
 
//Sampling at fs<2fm i.e Oversapmling
n = 0:1/fs3:1;
x3 = sin(2*%pi*fm*n);
subplot(4,2,7);
plot2d3(n,x3);
xlabel('Time (sec)');
ylabel('Amplitude');
title('Oversampled Signal fs>2fm');
subplot(4,2,8);
plot(n,x3);
xlabel('Time (sec)');
ylabel('Amplitude');
title('Reconstructed signal for Oversampling fs>>2fm'); 


