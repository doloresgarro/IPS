
% Verificamos la respuesta impulsional del sistema 2

n = -10:10; 
delta = zeros(size(n));
delta (n == 0) = 1;

h = sistema2(n, delta);
subplot(3,1,1);
stem(n, h);
xlabel("s")
ylabel("h[n]")
title("Respuesta impulsional del sistema 2")


% Calculamos la TFTD de la señal x
ds = 0.001; 
s = -1/2:ds:1/2;
H = zeros(size(s));
for k = 1:length(s)
    H(k) = sum(h.*exp(-1i*2*pi*s(k)*n)); % definición de TFTD
end

% Graficamos con plot la TFTD 
s = -0.5:ds:0.5;
subplot(3,1,2);
plot(s, abs(H)); % modulo
xlabel("s");
ylabel("|H(e^{j2πs})|");
title("Módulo de TFTD")

subplot(3,1,3);
plot(s, angle(H)); % fase
xlabel("s");
ylabel("Φ "); 
title("Fase de TFTD")







