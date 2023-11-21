% Ejercicio 4
addpath('../funciones/')  

n = 0:7;

% Definir x[n] (cajón)
x = zeros(size(n));
x(n >= 1 & n <= 4) = 1;

% Definir y[n]
y = sin(3*pi*n/4);

% Calcular la convolución circular
conv_circular = zeros(size(n));

for m = 0:7
    conv_circular = conv_circular + x(mod(n-m, 8) + 1) * y(m+1);
end

% Mostrar resultados
disp('Resultado de la convolución circular:');
disp(conv_circular);
