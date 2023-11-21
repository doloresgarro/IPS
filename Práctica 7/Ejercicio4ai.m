%% Compruebo ejercicio 4. a) i
x = [1 1 1 1 1 0 0 0];
y = [0 0.7 -1 0.7 0 -0.7 1 -0.7];

% Calcular la convolución circular
X = fft(x);
Y = fft(y);
conv_circular = ifft(X .* Y);
stem(conv_circular);

% Mostrar resultados
disp('Resultado de la convolución circular:');
disp(conv_circular);

%% Compruebo 4. a) ii
x = [0 -0.7 1 -0.7 0 0.7 -1 0.7];
y = [1 0.7 0 -0.7 -1 -0.7 0 0.7];

% Calcular la convolución circular
X = fft(x);
Y = fft(y);
conv_circular = ifft(X .* Y);
stem(conv_circular);

% Mostrar resultados
disp('Resultado de la convolución circular:');
disp(conv_circular);
