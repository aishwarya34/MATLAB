function [] = BivariateGaussianDistributions_bivariate_pdf_equation()
    % same output as :
    % BivariateGaussianDistributions_mvnpdf_xaxis.jpg
    % BivariateGaussianDistributions_mvnpdf_yaxis.jpg
    
    fig = figure('Name','Bivariate Normal Distribution  ','NumberTitle','off');
    mu = [0 ;0];
    covariance =  [0.5 0.8; 0.8 2.0];
    x1 = -3:0.2:3;
    x2 = -3:0.2:3;
    %x = [x1; x2];
    [X1,X2] = meshgrid(x1,x2);
    X = [X1(:) X2(:)]';
    Z = 1/(2*pi*(det(covariance))^(0.5))* exp(-(1/2)*sum((X-mu).*(pinv(covariance)*(X-mu))));
    Z = reshape(Z,size(X1));
    surf(X1,X2,Z)
    xlabel('x')
    ylabel('y')
    zlabel('Bivariate Gaussian Distributions')
end