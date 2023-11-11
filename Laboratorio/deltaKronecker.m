% Delta de kronecker
n = -5:5; 
delta = zeros(size(n));
delta (n == 0) = 1;

stem(n, delta); 

