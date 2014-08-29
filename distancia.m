function D = distancia(x, X)
%Distance
m = size(X,1); 
D = zeros(m,1);

D = ones(size(X), 1);
for i = 1: size(X)
   D(i,:) = norm(x(1,:) - X(i,:));
end

end
