% Ejercicio 7c

Ts = 1/5000; 
f0 = 500;
n = 0:1:20;
x = sin(2*pi*f0*n*Ts);
t = 0:Ts/200:Ts*20; 
yZOH = zeros(size(t));

figure, hold on, plot(n*Ts,x,'o');

for k = 1:length(n)
    xrp = x(k).*((t>= n(k)*Ts) & (t < (n(k)+1)*Ts));
    plot(t,xrp,'k--');
    yZOH = yZOH + xrp;
end

plot(t,yZOH,'r'), 
hold off;

% La función plot, implementa un reconstructor de orden 1:
figure, plot(n*Ts,x,'o',n*Ts,x,'r-');
% Los comandos siguientes permiten emular el comportamiento del reconstructor ideal (interpolación con sincs)
yIDEAL = zeros(size(t));

figure, hold on, plot(n*Ts,x,'o')

for k = 1:length(n)
    xrp = x(k).*sinc((t-n(k).*Ts)/Ts);  
    plot(t,xrp,'k--');
    yIDEAL = yIDEAL+xrp;
end

plot(t,yIDEAL,'r');
hold off;


