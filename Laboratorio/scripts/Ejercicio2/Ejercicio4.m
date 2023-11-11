
% Debido a que nuestra señal es de la forma:
% y[n] = x[n] - 0.45 * x[n-8820] + 0.2 * x[n-17640]
% Probamos un filtro de la forma: 
% y[n] = x[n] + 0.45 * x[n-8820] - 0.2 * x[n-17640]

n = 0:18000;
delta = zeros(length(n));
delta (n == 0) = 1;

[x, fs] = audioread("audio.wav");

hA = funcionEcuacionEnDiferencias(delta);
subplot(2, 1, 1);
stem(n,hA);
xlabel("n");
ylabel("hA[n]");
title("Señal sin filtro");

h2 = filtroDePrueba(hA);
subplot(2, 1, 2);
stem(n,h2);
xlabel("n");
ylabel("hA[n]");
title("Señal con filtro");

r1 = filtroDePrueba1rama(x);
sound(r1, fs);


