function [] = area_using_trapz()
%area =
%    1.0000

mu = 0;
var = 1;
x = -7:0.01:7;
pdf = (2*pi*(var))^(-0.5)* exp(-((x-mu).^2)/(2*(var)));
area=trapz(x,pdf)
end