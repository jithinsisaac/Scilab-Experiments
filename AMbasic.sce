  fm = 40; //2 Hz
    fc = 300; //10 Hz
    fs = 100000; //samples/sAc
    Am=10;
    Ac=10; 
    
    m=1  
  
   t = 0:1/fs:0.25;
    Vm = m*Ac*sin(2*%pi*fm*t);
    subplot(3,1,1)
    plot(t,Vm)
    title('Modulating Signal')
    
    t = 0:1/fs:0.5;
    Vc = Ac*sin(2*%pi*fc*t);
    subplot(3,1,2);
    plot(t,Vc);
    title('Carrier Signal');
    
    t = 0:1/fs:0.25;
    x = (Ac+Ac*m*sin(2*%pi*fm*t)).*(sin(2*%pi*fc*t));
    Am2 = (m*Ac*sin(2*%pi*fm*t))+(Ac);
    subplot(3,1,3);
    plot(t,x,t,Am2);
    title('Amplitude Modulated Signal')
