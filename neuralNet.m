%% Neural Network based on Machine Learning Exercise 4 from
%% Coursera Machine Learning course.

clear ; close all; clc

%% Setup the parameters you will use for this exercise

%If you wish to have smaller and or larger pictures change
%the variable input_layer_size accordingly
input_layer_size  = 10000;  % 100x100 Input Images of Digits

%If you wish to change the amount of hidden units in the hidden layer
hidden_layer_size = 25;     % 25 hidden units

num_labels = 8;             % 10 labels, from 1 to 10 for each like interval


%Create the big data mat-file for all the pictures.
X = createMatrix();

%Load in how many likes each picture has
y = load('y.txt');

%Vector for the output of each picture.
m = size(X, 1);



fprintf('\nInitializing Neural Network Parameters ...\n')

%Set the inital weights to random values.
initial_Theta1 = randInitializeWeights(input_layer_size, hidden_layer_size);
initial_Theta2 = randInitializeWeights(hidden_layer_size, num_labels);

% Unroll parameters
initial_nn_params = [initial_Theta1(:) ; initial_Theta2(:)];


fprintf('\nTraining Neural Network... \n')

%Options for the optimisation algorithm fmincg
%Change the value
iterations = 100;
options = optimset('MaxIter', iterations);

%  You should also try different values of lambda
lambda = 0.1;

% Create "short hand" for the cost function to be minimized.
costFunction = @(p) nnCostFunction(p, ...
                                   input_layer_size, ...
                                   hidden_layer_size, ...
                                   num_labels, X, y, lambda);


% Computes the cost and the parameters using fmincg
[nn_params, cost] = fmincg(costFunction, initial_nn_params, options);

% Obtain Theta1 and Theta2 back from nn_params
Theta1 = reshape(nn_params(1:hidden_layer_size * (input_layer_size + 1)), ...
                 hidden_layer_size, (input_layer_size + 1));

Theta2 = reshape(nn_params((1 + (hidden_layer_size * (input_layer_size + 1))):end), ...
                 num_labels, (hidden_layer_size + 1));

%Predicts the values for each of the pictures in the training data.

%Test how good the neural network performs on training data
predX = predict(Theta1, Theta2, X);

fprintf('\nTraining Set Accuracy On Training Data: %f\n', mean(double(predX == y)) * 100);

fprintf('\nPress Enter To Continue\n');
pause;


%Load test-data pictures
Z = testData();

%Load test-data likes
w =load('w.txt');

predZ = predict(Theta1, Theta2, Z);

fprintf('\nTraining Set Accuracy On Test Data: %f\n', mean(double(predZ == w)) * 100);
