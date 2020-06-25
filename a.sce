Fs =100; //Sampling Frequency
t = [0 : Fs]
//Fs; // sampling instants
iniphase = 0; //initial carrier phase
Fc = 10; // Carrier frequency
x=sin(2∗%pi∗t); //Sinusoidal signal
y = ssbampmod(x, Fc, Fs, iniphase,′lower′);
z = fft(y); // find frequency spectrun
zz = abs(z(1 : length(z)/2)); //take positive frequencies
axis = (0 : Fs/length(zz) : Fs − (Fs/length(zz)))/2; //frequency axis
subplot(3,1,1); plot(x); // plot message signal
subplot(3,1,2); plot(y); // plot the modulated signal
subplot(3,1,3); plot(axis,zz); // plot spectrum
