
addpath('../funciones/')  

% Defino vector para la variable independiente t

t =[-2:.001:8];
h=tri1(2*t-3);
plot(t,h);

%t = -2:.001:8;     % desde -2 a 8 con paso 0.001
%h = tri1(2*t-3);     % evalúo señal
%ha = tri2(2*t-3);   
%plot(t, h, 'r');     % grafico la señal dada
%hold on             % para graficar las dos señales en la misma gráfica
%plot(t, ha, 'g');   %