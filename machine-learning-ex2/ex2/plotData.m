function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%
id_yes = (y(:,1) == 1);
id_no = (y(:,1) == 0);

plot(X(id_yes, 1), X(id_yes, 2), 'kx', 'MarkerSize', 5);

plot(X(id_no, 1), X(id_no, 2), 'ko', 'MarkerSize', 5, 'MarkerFaceColor', 'b');






% =========================================================================



hold off;

end
