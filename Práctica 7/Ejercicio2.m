% Ejercicio 2

N = 51; 
n = 0:1:N-1;
k = 0:1:N-1;
x = cos(2*pi*n/10);
X = fft(x); % --> devuelve las muestras que van desde la muestra 0 hasta la N-1 
%figure, plot(k,abs(X),'.');

Ts = 1/10; 
f = 0:(1/N)*(1/Ts):((N-1)/N)*(1/Ts);
figure('units', 'normalized', 'outerPosition', [0 0 1 1])
stem(f,abs(X),'o-', 'LineWidth',1,'MarkerSize',5);

%if(mod(N,2)==0)
    % Si N es par
%    f = [-1/(2*Ts) : (1/N)*(1/Ts) : ((N-1)/N)*(1/(2*Ts))];
%else
    % Si N es impar
%    f = [((N-1)/N)*(-1/(2*Ts)) : (1/N)*(1/Ts) : ((N-1)/N)*(1/(2*Ts))];
%end

f = (1-(1/N)*mod(N,2))*(-1/(2*Ts)):(1/N)*(1/Ts):((N-1)/N) * (1/(2*Ts));

% el fftshift toma la segunda mitad del vector la pega adelante de la
% primera mitad
figure('units', 'normalized', 'outerPosition', [0 0 1 1])
stem(f,abs(fftshift(X)),'LineWidth',1,'MarkerSize',5);
xlabel('$t$', 'Interpreter','Latex', 'FontSize',22);
ylim([0, 10*ceil(max(abs(X))/10)]);
