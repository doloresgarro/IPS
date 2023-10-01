
function h = tri1(t)
    % TRI1 señal del ej2 de P1
    h = (t + 1).*(t >= -1 & t < 1) + (-t + 3).*(t >= 1 & t < 3); % entre [-1, 1) vale t + 1, entre [1, 3] vale -t + 3
end
