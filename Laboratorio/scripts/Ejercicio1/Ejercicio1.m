% Ejercicio1 
numAlu = 036588;

% Graficamos la señal discreta con un paso de 1, utilizando el comando stem
[n,x] = senial(numAlu);

subplot(3,1,1);
stem(n,x);
xlabel("n")
ylabel("x[n]")
title("Señal discreta")

% Calculamos la TFTD de la señal x
ds = 0.001; 
s = -1/2:ds:1/2;
X = zeros(size(s));
for k = 1:length(s)
    X(k) = sum(x.*exp(-1i*2*pi*s(k)*n)); % definición de TFTD
end

% graficamos con plot la TFTD 
s = -0.5:ds:0.5;
subplot(3,1,2);
plot(s, abs(X)); % modulo
xlabel("s");
ylabel("|X(e^{j2πs})|"); %% -------------------------------
title("Módulo de TFTD")

subplot(3,1,3);
plot(s, angle(X)); % fase
xlabel("s");
ylabel("Φ "); %% --------------------------------
title("Fase de TFTD")




