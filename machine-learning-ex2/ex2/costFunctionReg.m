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

[non_reg_j, non_reg_grad] = costFunction(theta, X, y);

% Cost
reg_term = lambda / (2 * m);
J = non_reg_j + (reg_term * sum(theta(2:size(theta)) .^ 2));

% Grad
reg_terms = (lambda / m) .* theta(2:size(theta));
grad(1) = non_reg_grad(1);
grad(2:size(non_reg_grad)) = non_reg_grad(2:size(non_reg_grad)) .+ reg_terms;


% =============================================================

end
