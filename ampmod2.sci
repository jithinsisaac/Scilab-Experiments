
//Amplitude Modulation
function[x,Vm,Vc]=ampmod(m,fm,fc,fs)
    //Ec -carrier amplitude in volts
    //Em - message signal amplitude in volts
    //fm - modulating signal frequency Hz
    //fc - carrier signal frequency in Hz
    //fs - sampling frequency in samples/sec
    
    
    Ec=10; 
    
    t = 0:1/fs:1;
    Vm = m*Ec*sin(2*%pi*fm*t);
    subplot(3,1,1)
    plot(t,Vm)
    title('Modulating Signal')
    
    t = 0:1/fs:0.5;
    Vc = Ec*sin(2*%pi*fc*t);
    subplot(3,1,2);
    plot(t,Vc);
    title('Carrier Signal');
    
    t = 0:1/fs:1;
    x = (Ec+Ec*m*sin(2*%pi*fm*t)).*(sin(2*%pi*fc*t));
    Vm2 = (m*Ec*sin(2*%pi*fm*t))+(Ec);
    subplot(3,1,3);
    plot(t,x,t,Vm2);
    title('Amplitude Modulated Signal')
    
//    N = 100; // number of elements of the signal
//    n = 0:(N-1);
//    F = fft(x); // it calculates the Fourier Transform
//    F_abs = abs(F); // F_abs is the absolute value of each element of F
//    plot(n, F_abs);
endfunction

//Amplitude demodulation
function[y]=ampdemod(x,Vc,fc,fs,Em,Ec)
    //x - AM modulated signal
    //Vc - carrier signal
    //fc - carrier frequency
    //Em - message signal amplitude
    //Ec- carrier signal amplitude
    xdem = x.*Vc;
    //IIR digital butterworth Low Pass filter of cutoff
    //frequency fc/fs and order 7
    H = iir(7,'lp','butt',[fc/fs,0],[.1,.1]);
    num = coeff(H(2));
    den = coeff(H(3));
    num = num(length(num):-1:1);
    den = den(length(den):-1:1);
    y = filter(num,den,xdem);
//    y = y/Em;
//    y = y-Ec;
    plot(y,'r');
    title('AM Demodulated Signal')
endfunction 


clc;
close;
   
    fm = 40; //2 Hz
    fc = 300; //10 Hz
    fs = 100000; //samples/sec
    Em=10;
    Ec=10; 
    
for i=1:1:3
    if i==1
        //Em=input('Énter Value of Am for Under modulation Give as 10 V:  ');
        //Ec=input('Énter Value of Ac for Under modulation Give as 15 V: ');
        m=input('Énter Value of modulation index for under modulation: ');
        figure(1);
        ampmod(m,fm,fc,fs);
       end
    if i==2
        //Em=input('Énter Value of Am for Perfect modulation Give as 15 V: ');
        //Ec=input('Énter Value of Ac for Perfect modulation Give as 15 V: ');
        m=input('Énter Value of modulation index for perfect modulation: ');
        figure(2);
        ampmod(m,fm,fc,fs);
        end
    if i==3
        //Em=input('Énter Value of Am for Over modulation Give as 25 V: ');
        //Ec=input('Énter Value of Ac for Over modulation Give as 15 V: ');
        m=input('Énter Value of modulation index for over modulation: ');       
        figure(3);
        ampmod(m,fm,fc,fs);
        end    
end




