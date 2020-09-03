% load the coins image that's built into MATLAB
coins = imread('coins.png');

% create a 2D Gaussian convolution operator to smooth the image
gauss3 = gauss2D(3.0);

% create a Laplacian-of-Gaussian convolution operator
lap4 = laplacian(4.0);

% convolve the coins image with the two operators
convG3 = conv2D(coins, gauss3);
convLap4 = conv2D(coins, lap4);

% compute zero-crossings of the Laplacian-of-Gaussian convolution
zc4 = zeros2D(convLap4);

% create a binary map of zero-crossings, only preserving zero-crossings
% whose slope is at least 10% of the maximum slope value
zc4map = zcMap(zc4, 0.1);

% open a new figure window
figure('Position', [50 50 700 700])

% display the coins image, Gaussian smoothed image, result of convolution
% with the Laplacian operator, and zero-crossings in a 2x2 arrangement

% display the coins image
subplot(2,2,1), imshow(coins)
title('original image')

% display the Gaussian smoothed image, using the range of values
% that exist within the region of computed convolution values
[minVal, maxVal] = getRange(convG3, 12);
subplot(2,2,2), imshow(convG3, [minVal maxVal])
title('Gaussian smoothed image')

% display the results of the Laplacian-of-Gaussian convolution
subplot(2,2,3), imshow(convLap4, [])
title('convolution with Laplacian')

% display the zero-crossings - the brightness of the contours
% is proportional to the computed slope
subplot(2,2,4), imshow(zc4, [])
title('zero-crossings')

% use overlayZC to display zero-crossing contours superimposed on
% the coins image, in a new figure window
figure('Position', [200 100 600 600]) 
coinsOverlay = overlayZC(coins, zc4map);
imshow(coinsOverlay, 'InitialMagnification', 'fit')
