function [X_norm, mu, sigma] = normalizar(X)
% normal
[m,n] = size(X); 
X_norm = zeros(m,n); 
mu = 0; 
sigma = 1; 

X_norm = ones(size(X));
medial = ones(size(X), 1);
sigma = ones(size(X));

mu = mean(X);
sigma = std(X);

%COLUNA 1
medial = mu(:,1).* ones(size(X), 1);
X_norm(:,1) = (X(:,1) - medial)./sigma(:,1);

%COLUNA 2
medial = mu(:,2).* ones(size(X), 1);
X_norm(:,2) = (X(:,2) - medial)./sigma(:,2);

end
