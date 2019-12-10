%Program used to output a predicted value for a picture
%Requires that you have trained parameters Theta1 & Theta2
%from a neural network.


%Load in the mat-file where your picture is located.
pic = transpose(load('jacobgra.mat').A(:));

% Useful values
m = size(pic, 1);

% You need to return the following variables correctly
p = zeros(size(pic, 1), 1);

h1 = sigmoid([ones(m, 1) pic] * Theta1');
h2 = sigmoid([ones(m, 1) h1] * Theta2');
[dummy, p] = max(h2, [], 2);

%Transform values of p to values for likes.

fprintf('\nPredicted value is: %d\n', p);
