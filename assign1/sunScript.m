% sunScript.m
% script for analyzing the sun illusion at a single scale corresponding 
% to a Laplacian-of-Gaussian operator with w = 5. Modify this script to 
% analyze the sun image at larger scales

sun = makeSun;      % create and display image of the sun illusion
imtool(sun)

% convolve the image with a Laplacian-of-Gaussian operator with w = 5
% and scale down the values for easier viewing
lap5 = laplacian(5.0);
convSun = 0.1*conv2D(sun,lap5);
% compute the zero-crossings and view the result
zcSun = zeros2D(convSun);
displayImage(zcSun, 10)    % lap5 is a 21x21 matrix, so no convolution is
                 % computed within a border of 10 pixels around the image
                 % convolve the image with a Laplacian-of-Gaussian operator with w = 5
% and scale down the values for easier viewing
lap10 = laplacian(10.0);
convSun = 0.1*conv2D(sun,lap10);
% compute the zero-crossings and view the result
zcSun = zeros2D(convSun);
displayImage(zcSun, 10)    % lap5 is a 21x21 matrix, so no convolution is
                 % computed within a border of 10 pixels around the image
                         % convolve the image with a Laplacian-of-Gaussian operator with w = 5
% and scale down the values for easier viewing
lap20 = laplacian(20.0);
convSun = 0.1*conv2D(sun,lap20);
% compute the zero-crossings and view the result
zcSun = zeros2D(convSun);
displayImage(zcSun, 10)    % lap5 is a 21x21 matrix, so no convolution is
                 % computed within a border of 10 pixels around the image
                         