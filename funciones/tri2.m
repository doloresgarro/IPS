
% Ejercicio 2a: h(t + 1) 
% h = (t + 1).*(t >= -1 & t < 1) + (-t + 3).*(t >= 1 & t < 3); % entre [-1, 1) vale t + 1, entre [1, 3] vale -t + 3%
function ha = tri2(t)
   % TRI2 señal del ej2a de P1
    ha = (t + 1).*(t >= -2 & t < 0) + (-t + 3).*(t >= 0 & t < 2);
end
