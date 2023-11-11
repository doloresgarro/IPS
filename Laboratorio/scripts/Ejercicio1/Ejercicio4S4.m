% Obtenemos la señal de salida para sistema 4 cuando la entrada es la señal del inciso 1
% Luego obtenemos la TFTD de la salida (modulo y fase)

numAlu = 036588;
[n,x] = senial(numAlu);

s4 = sistema4(n, x);
subplot(3,1,1);
stem(n, s4);
xlabel("n")
ylabel("y4[n]")
title("Señal de salida para el sistema 4")

% Calculamos la TFTD de y4[n]
ds = 0.001; 
s = -1/2:ds:1/2;
Y4 = zeros(size(s));
for k = 1:length(s)
    Y4(k) = sum(s4.*exp(-1i*2*pi*s(k)*n)); % definición de TFTD
end

subplot(3,1,2);
plot(s,abs(Y4))
xlabel("s")
ylabel("|Y4[n]|")
title("Modulo de TFTD")


subplot(3,1,3);
plot(s,angle(Y4))
xlabel("s")
ylabel("Φ")
title("Fase de TFTD")