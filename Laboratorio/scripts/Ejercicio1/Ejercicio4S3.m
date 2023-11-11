% Obtenemos la señal de salida para sistema 3 cuando la entrada es la señal del inciso 1
% Luego obtenemos la TFTD de la salida (modulo y fase)

numAlu = 036588;
[n,x] = senial(numAlu);

s3 = sistema3(n, x);
subplot(3,1,1);
stem(n, s3);
xlabel("n")
ylabel("y3[n]")
title("Señal de salida para el sistema 3")

% Calculamos la TFTD de y3[n]
ds = 0.001; 
s = -1/2:ds:1/2;
Y3 = zeros(size(s));
for k = 1:length(s)
    Y3(k) = sum(s3.*exp(-1i*2*pi*s(k)*n)); % definición de TFTD
end

subplot(3,1,2);
plot(s,abs(Y3))
xlabel("s")
ylabel("|Y3[n]|")
title("Modulo de TFTD")


subplot(3,1,3);
plot(s,angle(Y3))
xlabel("s")
ylabel("Φ")
title("Fase de TFTD")

