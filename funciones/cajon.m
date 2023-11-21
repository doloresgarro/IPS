% Función cajón
% n: intervalo, a: inicio del intervalo, b: fin del intervalo
function c = cajon(n, a, b)
    c = zeros(size(n)); % inicializo en 0 
    c((n >= a) & (n <= b)) = 1; % desde a hasta b altura del cajon = 1
end
