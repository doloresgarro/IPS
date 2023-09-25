addpath('../funciones/') % para incluir los .m de la carpeta funciones

% Realizo gráfico de una SVIC
t = -40:0.01:40; % representa la función entre [-40, 40] con un paso de 0.01
xa = -2 * sin(-0.2 * t + 5/3 * pi); % función que va a graficar

plotCompleto([t(1) t(end) -2 2], 't', 'f(t)', 'Señal f(t)', 10, 'g', 1.5, t, xa) %si le saco el * a 'r' grafica con menos grosor

