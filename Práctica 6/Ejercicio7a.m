% Ejercicio 7a
% Las sentencias siguientes permiten verificar los resultados del ejercicio 1 b). Trate de interpretarlas,
%y ejecute variando el valor de k.

k = 0; 
f0 = 100 + k * 1200; 
Ts = 1/1200;
n = 0:1:12;
t = 0:Ts/1000:12*Ts;

xa = sin(2*pi*f0*t); % sin en frecuencia f0 en función del tiempo 
x = sin(2*pi*f0*n*Ts); % sin en frecuencia f0 en función de n y Ts
x2 = sin(pi*n/6); % sin en frecuencia pi/6 en función de n

% se grafica xa continua, x y x2 discretas
subplot (2, 1, 1)
%figure, 
plot(t, xa, n*Ts,x ,'o',n*Ts,x2,'.r')

k = 1; 
f0 = 100 + k * 1200; 
Ts = 1/1200;
n = 0:1:12;
t = 0:Ts/1000:12*Ts;

xa = sin(2*pi*f0*t); % sin en frecuencia f0 en función del tiempo 
x = sin(2*pi*f0*n*Ts); % sin en frecuencia f0 en función de n y Ts
x2 = sin(pi*n/6); % sin en frecuencia pi/6 en función de n

% se grafica xa continua, x y x2 discretas
subplot (2, 1, 2)
%figure,
plot(t, xa, n*Ts,x ,'o',n*Ts,x2,'.r')

% En las gráficas se ve que al agrandar el k la función continua tiene mas
% oscilaciones pero la función discreta siempre tiene los mismos puntos.

