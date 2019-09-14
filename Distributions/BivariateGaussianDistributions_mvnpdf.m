function [] = BivariateGaussianDistributions_mvnpdf()

    fig = figure('Name','Figure 1  ','NumberTitle','off');
    mu = [0 ,0];
    sigma =  [0.5 0.8; 0.8 2.0];
    x1 = -3:0.2:3;
    x2 = -3:0.2:3;
    x = [x1; x2];
    [X1,X2] = meshgrid(x1,x2);
    X = [X1(:) X2(:)];
    y = mvnpdf(X,mu,sigma);
    y = reshape(y,length(x1),length(x2));
    surf(X1,X2,y)
    xlabel('x')
    ylabel('y')
    zlabel('Bivariate Gaussian Distributions')
    saveas(fig,'BivariateGaussianDistributions_mvnpdf_xaxis.jpg')  
end