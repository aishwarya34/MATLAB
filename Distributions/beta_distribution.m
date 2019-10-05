function [] = beta_distribution()
alpha = 2;
beta = 5;
u = 0:0.01:1;
pdf = (gamma(alpha+beta)/ (gamma(alpha)*gamma(beta))) .* u.^(alpha-1) .* (1 - u).^(beta-1);
plot(u, pdf)

end