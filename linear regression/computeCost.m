function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

sumcost = 0; % store the sum of cost from all the datasets from the assumed hyothesis
Hi = 0;
for i=1:m % loop to calculate cost of hypothesis from each training example
    x = X(i,:);
    x= x';
    Hi = (theta')*x;
sumcost = sumcost + (Hi-y(i))^2;
end
J=sumcost/(2*m);





% =========================================================================

end
