function [] = area_1_using_trapz()
% area_before =
%  700.0000
% area_after =
%   1

mu = 0;
var = 1;
x = -7:0.01:7;
pdf = (2*pi*(var))^(-0.5)* exp(-((x-mu).^2)/(2*(var)));
cdf = cumtrapz(pdf);
area_before=trapz(x,cdf)
cdf = cdf./area_before;
area_after=trapz(x,cdf)
end