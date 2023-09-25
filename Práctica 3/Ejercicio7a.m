% defina los vectores x y h correspondientes a señales
% discretas y calcule la convolución entre ellas

N1 = -20; 
N2 = 20;
n = N1:N2; % array que va a contener valores desde N1 hasta N2

% cajón centrado en 0
x = zeros(size(n));     % array del mismo tamaño que n, inicializado en cero
x((n>=-5)&(n<=5)) = 1;  % desde -5 hasta 5 --> x = 1

% iii)
K = 2;
x = circshift(x,[0,K]);

% triángulo
h = zeros(size(n));     % array del mismo tamaño que n, inicializado en cero
h((n>=-9)&(n<=9)) = [[1:1:10] [9:-1:1]]; % desde -9 hasta 9 --> h crece linealemte desde 0 hasta 10 y decrece desde 9 hasta 1 

n2 = [2*n(1):2*n(end)]; % se invierte y expande el array n 

% convolución discreta de x y h para los valores dados de n y n2 
y = conv(x,h);  


% i) Grafique utilizando el comando stem (tenga en cuenta que debería hacer stem(n,x), stem(n,h)
% y stem(n2,y)). Recuerde que puede poner las tres gráficas en una misma figura utilizando
% el comando subplot.

% stem(x, y) -->  crea un tipo de gráfico llamado gráfico de palos.
% x e y --> vectores que indican los puntos en cada eje.  

% creo figura para mostrar subgráficos 
figure; 

% subplot(f, c, sg) --> recibe filas y columnas de la cuadrícula de
% subgráficos. Recibe índica del subgráfico en el que se va a trabajar

% PRIMER SUBGRÁFICO: 
subplot(3, 1, 1); 
stem(n, x);
title('Señal x(n)');
xlabel('n');          % agrega etiqueta al eje x del gráfico
ylabel('Amplitud');   % agrega etiqueta al eje y del gráfico


% SEGUNDO SUBGRÁFICO: 
subplot(3, 1, 2); 
stem(n, h);
title('Señal x(n)');
xlabel('n');          % agrega etiqueta al eje x del gráfico
ylabel('Amplitud');   % agrega etiqueta al eje y del gráfico


% TERCER SUBGRÁFICO: 
subplot(3, 1, 3); 
stem(n2, y);
title('Señal x(n)');
xlabel('n');          % agrega etiqueta al eje x del gráfico
ylabel('Amplitud');   % agrega etiqueta al eje y del gráfico


% ii. Pruebe qué sucede al modificar los valores de N1 y N2
% Al cambiar los valores en el gráfico se ve menos o mas rango según que
% valores se le asigne a N1 y N2


% iii. Podría desplazar la señal x, mediante las sentencias K = 5; x = circshift(x,[0,K]);.
% Vuelva a calcular la convolución en este caso e interprete sus resultados. Pruebe qué sucede
% con diferentes valores de desplazamiento K.
% El gráfico de la convolución también se desplaza
