%Program used to combine all seperate .mat files together
%into one big mat-file later used as input to the neural network.

%NOTE: This program is for the test data not the training data.

function matrix = testData()

img132 = load('img132.mat');
img133 = load('img133.mat');
img134 = load('img134.mat');
img135 = load('img135.mat');
img136 = load('img136.mat');
img137 = load('img137.mat');
img138 = load('img138.mat');
img139 = load('img139.mat');
img140 = load('img140.mat');
img141 = load('img141.mat');
img142 = load('img142.mat');
img143 = load('img143.mat');
img144 = load('img144.mat');
img145 = load('img145.mat');
img146 = load('img146.mat');
img147 = load('img147.mat');
img148 = load('img148.mat');
img149 = load('img149.mat');
img150 = load('img150.mat');
img151 = load('img151.mat');
img152 = load('img152.mat');
img153 = load('img153.mat');
img154 = load('img154.mat');
img155 = load('img155.mat');
img156 = load('img156.mat');
img157 = load('img157.mat');
img158 = load('img158.mat');
img159 = load('img159.mat');
img160 = load('img160.mat');
img161 = load('img161.mat');

img132T = transpose(img132.A(:));
img133T = transpose(img133.A(:));
img134T = transpose(img134.A(:));
img135T = transpose(img135.A(:));
img136T = transpose(img136.A(:));
img137T = transpose(img137.A(:));
img138T = transpose(img138.A(:));
img139T = transpose(img139.A(:));
img140T = transpose(img140.A(:));
img141T = transpose(img141.A(:));
img142T = transpose(img142.A(:));
img143T = transpose(img143.A(:));
img144T = transpose(img144.A(:));
img145T = transpose(img145.A(:));
img146T = transpose(img146.A(:));
img147T = transpose(img147.A(:));
img148T = transpose(img148.A(:));
img149T = transpose(img149.A(:));
img150T = transpose(img150.A(:));
img151T = transpose(img151.A(:));
img152T = transpose(img152.A(:));
img153T = transpose(img153.A(:));
img154T = transpose(img154.A(:));
img155T = transpose(img155.A(:));
img156T = transpose(img156.A(:));
img157T = transpose(img157.A(:));
img158T = transpose(img158.A(:));
img159T = transpose(img159.A(:));
img160T = transpose(img160.A(:));
img161T = transpose(img161.A(:));

matrix = [img132T; img133T; img134T; img135T; img136T; img137T; img138T; img139T; img140T; img141T; img142T; img143T; img144T; img145T; img146T; img147T; img148T; img149T; img150T; img151T; img152T; img153T; img154T; img155T; img156T; img157T; img158T; img159T; img160T; img161T; ];

displayData(matrix.A);
return;
