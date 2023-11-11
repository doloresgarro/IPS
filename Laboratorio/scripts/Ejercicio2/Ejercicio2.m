
% Ejercicio 2

n = 0:18000;
delta = zeros(length(n));
delta (n == 0) = 1;
%stem(n,delta);

% Verificamos que la respuesta impulsional es igual a la hA[n]
hA = funcionEcuacionEnDiferencias(delta);
stem(n,h);
