% Obtenemos la señal de salida para sistema 2 cuando la entrada es la señal del inciso 1
% Luego obtenemos la TFTD de la salida (modulo y fase)

numAlu = 036588;
[n,x] = senial(numAlu);

s2 = sistema2(n, x);
subplot(3,1,1);
stem(n, s2);
xlabel("n")
ylabel("y2[n]")
title("Señal de salida para el sistema 2")

% Calculamos la TFTD de y2[n]
ds = 0.001; 
s = -1/2:ds:1/2;
Y2 = zeros(size(s));
for k = 1:length(s)
    Y2(k) = sum(s2.*exp(-1i*2*pi*s(k)*n)); % definición de TFTD
end

subplot(3,1,2);
plot(s,abs(Y2))
xlabel("s")
ylabel("|Y2[n]|")
title("Modulo de TFTD")

subplot(3,1,3);
plot(s,angle(Y2))
xlabel("s")
ylabel("Φ")
title("Fase de TFTD")