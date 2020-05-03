function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

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
%
% Note: grad should have the same dimensions as theta
%
hypotesis = sigmoid(X*theta);

% J(theta)
t1 = ((-1) .* y) .* (log(hypotesis));
t2 = (1 .- y) .* (log(1 .- hypotesis));

J = (1/m) * sum(t1-t2);

% Gradients
##grad_size = size(grad);
##
##for sub = 1:grad_size
##  x = X(:, sub);
##  grad(sub) = (1/m) * sum((hypotesis .- y) .* x);
##endfor
grad(1) = (1/m) * sum(hypotesis .- y);

first_term = hypotesis .- y;
x_prod = X(:,[2:end]);
grad([2:end]) = (1/m) .* (x_prod' * first_term);

% =============================================================

end
