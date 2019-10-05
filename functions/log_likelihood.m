function [] = log_likelihood()
x = -5*log(rand(100,1));
pd = fitdist(x,'weibull');

format compact
negloglik(pd)

sum(-log(pdf(pd,x)))

wbllike(pd.ParameterValues,x)
end