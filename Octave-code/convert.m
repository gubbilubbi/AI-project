%Used to convert png-files to .mat files.

%Before running this program write
%the following command in the terminal.

%Make sure you are in the correct directory
%where all the png pictures are.
%filenames = dir('*.png')


n = numel(filenames)
for i = 1:n
  A = double(imread(filenames(i).name));
  [fpath radical ext] = fileparts(filenames(i).name);
  save([radical '.mat'], 'A');
end
