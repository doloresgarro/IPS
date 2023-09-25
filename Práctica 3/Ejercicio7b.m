% Con la misma idea del inciso anterior se podría intentar calcular las respuestas a las excitaciones
% x1, x2 y x3 de un sistema con respuesta impulsional h

% Interprete qué ocurre en y2 a partir de n2 = 61 (recuerde que conv resuelve la convolución entre
% secuencias de largo finito).

N1 = -60; 
N2 = 60; 
n = N1:N2; % n array que va desde -60 a 60

h = zeros(size(n));     
h(n>0) = exp(-.2*n(n>0));
subplot(4, 2, 7); 
stem(n, h);


% cajón centrado en 5
x1 = zeros(size(n));
x1((n>=0) & (n<=10)) = 1;

% función escalon 
x2 = zeros(size(n)); 
x2((n>=0)) = 1;

% suma de escalones
x3 = zeros(size(n));
x3((n>=0)) = 1;
x3((n>=20)) = 1.5;

y1 = conv(x1,h); 
y2 = conv(x2,h);
y3 = conv(x3,h);

n2 = 2*n(1):2*n(end);


% PRIMER SUBGRÁFICO: 
subplot(4, 2, 1); 
stem(n, x1);
title('Señal x1(n)');
xlabel('n');          % agrega etiqueta al eje x del gráfico
ylabel('Amplitud');   % agrega etiqueta al eje y del gráfico


% SEGUNDO SUBGRÁFICO: 
subplot(4, 2, 3); 
stem(n, x2);
title('Señal x2(n)');
xlabel('n');          % agrega etiqueta al eje x del gráfico
ylabel('Amplitud');   % agrega etiqueta al eje y del gráfico


% TERCER SUBGRÁFICO: 
subplot(4, 2, 5); 
stem(n, x3);
title('Señal x3(n)');
xlabel('n');          % agrega etiqueta al eje x del gráfico
ylabel('Amplitud');   % agrega etiqueta al eje y del gráfico


% CUARTO SUBGRÁFICO: 
subplot(3, 2, 2); 
stem(n2, y1);
title('Convolución e/ x1 y h');
xlabel('n');          % agrega etiqueta al eje x del gráfico
ylabel('Amplitud');   % agrega etiqueta al eje y del gráfico

% QUINTO SUBGRÁFICO: 
subplot(4, 2, 4); 
stem(n2, y2);
title('Convolución e/ x2 y h');
xlabel('n');          % agrega etiqueta al eje x del gráfico
ylabel('Amplitud');   % agrega etiqueta al eje y del gráfico


% SEXTO SUBGRÁFICO: 
subplot(4, 2, 6); 
stem(n2, y3);
title('Convolución e/ x3 y h');
xlabel('n');          % agrega etiqueta al eje x del gráfico
ylabel('Amplitud');   % agrega etiqueta al eje y del gráfico



