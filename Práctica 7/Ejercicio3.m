% Ejercicio 3

nzp = 0:1:Nzp-1;
kzp = 0:1:Nzp-1; 
xzp = [x, zeros(1,Nzp-N)];
fzp = (1-(1/Nzp) * mod(Nzp,2)) * (-1/(2*Ts)) : (1/Nzp) * (1/Ts):((Nzp-1)/Nzp) * (1/(2*Ts));
Xzp = fft(xzp); 
figure, plot(fzp,abs(fftshift(Xzp)),'.');