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
i = length(X)
admitted_data = [];
not_admitted_data = [];
for j = 1:1:i
    if y(j) == 1
        admitted_data = [admitted_data; X(j,:)];
    else
        not_admitted_data = [not_admitted_data; X(j,:)];  
    end
end
admitted_data;
not_admitted_data;
plot(admitted_data(:,1),admitted_data(:,2),'k+');
plot(not_admitted_data(:,1),not_admitted_data(:,2),'yo','MarkerFaceColor','yellow');







% =========================================================================



hold off;

end
