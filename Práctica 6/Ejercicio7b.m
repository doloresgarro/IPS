% Ejercicio 7b
% Señal con frecuencias f0 = 500, 2000, 3000, ...

Ts = 1/5000;  % el tiempo entre muestras consecutivas es 1/5000
f0 = 500;
n = 0:1:100;
x = sin(2*pi*f0*n*Ts);
subplot(3,2,1);
plot(n, x, '.-')
xlabel("n");
ylabel("x[n]");
title("Señal con frecuencia f0 = 500")


Ts = 1/5000;  % el tiempo entre muestras consecutivas es 1/5000
f0 = 2000;
n = 0:1:100;
x = sin(2*pi*f0*n*Ts);
subplot(3,2,3);
plot(n, x, '.-')
xlabel("n");
ylabel("x[n]");
title("Señal con frecuencia f0 = 2000")

Ts = 1/5000;  % el tiempo entre muestras consecutivas es e/5000
f0 = 3000;
n = 0:1:100;
x = sin(2*pi*f0*n*Ts);
subplot(3,2,5);
plot(n, x, '.-')
xlabel("n");
ylabel("x[n]");
title("Señal con frecuencia f0 = 3000")

% A medida que aumenta f0, el número de oscilaciones en el intervalo
% dado aumenta, lo que resulta en una señal más comprimida en el 
% eje horizontal.

% --------------------------------------------------------------------
% Ahora, si las frecuencias son múltiplos de π

Ts = 1/5000;  % el tiempo entre muestras consecutivas es 1/5000
f0 = 100*pi;
n = 0:1:100;
x = sin(2*pi*f0*n*Ts);
subplot(3,2,2);
plot(n, x, '.-')
xlabel("n");
ylabel("x[n]");
title("Señal con frecuencia f0 = 100π")


Ts = 1/5000;  % el tiempo entre muestras consecutivas es 1/5000
f0 = 200*pi;
n = 0:1:100;
x = sin(2*pi*f0*n*Ts);
subplot(3,2,4);
plot(n, x, '.-')
xlabel("n");
ylabel("x[n]");
title("Señal con frecuencia f0 = 200π")

Ts = 1/5000;  % el tiempo entre muestras consecutivas es 1/5000
f0 = 300*pi;
n = 0:1:100;
x = sin(2*pi*f0*n*Ts);
subplot(3,2,6);
plot(n, x, '.-')
xlabel("n");
ylabel("x[n]");
title("Señal con frecuencia f0 = 300π")

% π --> irracional, por lo tanto como las frecuencias son irracionales,
% también lo son sus períodos. 
% En variable independiente discreta, esto implica que la señal x[n] no 
% es periódica. Puede haber intervalos en los que se repita la señal y
% parezca lo es, pero al ser su período irracional, no cumple con la 
% condición de periodicidad. 



