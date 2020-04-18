function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
linear = -(X*theta);
J = 0;
cost = 0;
cost_theta = 0;
for i = 1:1:m
    h_theta = 1/(1+exp(linear(i)));
    cost = cost + (-((y(i)*log(h_theta))+ (1-y(i))*(log(1-h_theta))))
   
    
end
j = 2;
while j<=length(grad)
     cost_theta = cost_theta + lambda*(theta(j)^2)
     j = j+1;
end
J = cost + (cost_theta/2);
grad_init = zeros(size(theta));
j = 1;
corec_factor = zeros(size(theta));
while j<=length(grad)
    for i =1:1:m
        h_theta = 1/(1+exp(linear(i)));
        grad_init(j,1) = grad_init(j,1)+ (h_theta-y(i))*X(i,j);
    end
    if j >1
        corec_factor(j) = lambda*theta(j);
    end
    grad(j,1) = grad_init(j,1)+corec_factor(j);
    j = j+1;
end
grad = grad/m;
J = J/m;
    





% =============================================================

end
