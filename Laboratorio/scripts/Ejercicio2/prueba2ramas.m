n = 0:18000;
delta = zeros(length(n));
delta (n == 0) = 1;

[x, fs] = audioread("audio.wav");

yA = funcionEcuacionEnDiferencias(delta);
subplot(2, 1, 1);
stem(n,yA);
xlabel("n");
ylabel("hA[n]");
title("Señal sin filtro");

y2 = filtroDePrueba(yA);
subplot(2, 1, 2);
stem(n,y2);
xlabel("n");
ylabel("yA[n]");
title("Señal con filtro");

r2 = filtroDePrueba(x);
sound(r2, fs);
