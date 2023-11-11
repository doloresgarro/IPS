
% Calculamos la salida al sistema con la señal de audio
[x, fs] = audioread("audio.wav");
y = funcionEcuacionEnDiferencias(x); 
plot(y); % graficamos señal de salida 
sound(y, fs);
xlabel("t");
ylabel("y(t)");