clear all; close all; clc;     % Al comenzar un script...

addpath('../funciones/')       % Para incluir los .m de la carpeta funciones.

dt = 1e-2;                     % paso temporal
t = -1:dt:1;                   % vector tiempo
x = cajon(t);                  % función cajón definida en "cajon.m", dentro de la carpeta "funciones"

% gráfico 
plotCompleto([-1 1 -0.5 1.5], 't', 'Amplitud', 'Gráfico de la SVIC', 10, 'm*-', 1.5, t, x);
