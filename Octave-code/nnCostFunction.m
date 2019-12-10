function [J grad] = nnCostFunction(nn_params, ...
                                   input_layer_size, ...
                                   hidden_layer_size, ...
                                   num_labels, ...
                                   X, y, lambda)
%NNCOSTFUNCTION Implements the neural network cost function for a two layer
%neural network which performs classification

% Reshape nn_params back into the parameters Theta1 and Theta2, the weight matrices
% for our 2 layer neural network
Theta1 = reshape(nn_params(1:hidden_layer_size * (input_layer_size + 1)), ...
                 hidden_layer_size, (input_layer_size + 1));

Theta2 = reshape(nn_params((1 + (hidden_layer_size * (input_layer_size + 1))):end), ...
                 num_labels, (hidden_layer_size + 1));

% Setup some useful variables
m = size(X, 1);

% You need to return the following variables correctly
J = 0;
Theta1_grad = zeros(size(Theta1));
Theta2_grad = zeros(size(Theta2));

%FIRST STEP
z_two = [ones(size(X,1), 1) X] * transpose(Theta1);

a_two = sigmoid(z_two);

z_three = [ones(size(a_two,1),1) a_two] * transpose(Theta2);

a_three = sigmoid(z_three);

y_sparse = sparse(1:length(y), y, ones(length(y), 1));
y_full = full(y_sparse);


for i=1:m;
J = J + (-log(a_three(i,:)) * transpose(y_full(i,:)) - log(1 .- a_three(i,:))*transpose((1 .- y_full(i,:))));
end;

J = (1/m) * J;

reg1 = 0;

for i=1:size(Theta1,1)
reg1 = reg1 + (Theta1(i, (2:size(Theta1,2))) * transpose(Theta1(i,(2:size(Theta1,2)))));
end;

reg2 = 0;

for i=1:size(Theta2,1)
reg2 = reg2 + (Theta2(i, 2:size(Theta2,2)) * transpose(Theta2(i,2:size(Theta2,2))));
end;

J = J + ((lambda/(2*m)) * (reg1 + reg2));

%SECOND STEP
delta_three = a_three - y_full;

%THIRD STEP
delta_two = (delta_three * Theta2(:,2:end)) .* sigmoidGradient(z_two);

%FOURTH STEP
cap_DELTA_TWO = transpose(delta_three) * [ones(size(a_two,1),1) a_two];
cap_DELTA_ONE = transpose(delta_two) * [ones(size(X,1),1) X];

%FIFTH STEP
Theta2_grad = (1/m) .* cap_DELTA_TWO;
Theta1_grad = (1/m) .* cap_DELTA_ONE;

%Regularisation
Theta1_grad(:, 2:end) = Theta1_grad(:, 2:end) + (lambda/m) * Theta1(:, 2:end);
Theta2_grad(:, 2:end) = Theta2_grad(:, 2:end) + (lambda/m) * Theta2(:, 2:end);

% Unroll gradients
grad = [Theta1_grad(:) ; Theta2_grad(:)];


end
