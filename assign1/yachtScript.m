% yachtScript.m
% script for analyzing the yacht image at two different scales 
% corresponding to Laplacian-of-Gaussian operators with w = 4 and w = 8. 
% The original image and two overlay images (with zero-crossings) are each 
% displayed in a separate Image Tool window, and can be dragged apart
yacht = imread('yacht.jpg');
imtool(yacht)

% compute and display results for a small operator
lap4 = laplacian(4.0);
conv4 = conv2D(yacht,lap4);
zc4 = zeros2D(conv4);
zcMap4 = zcMap(zc4,0.0);
overlay4 = overlayZC(yacht,zcMap4);
imtool(overlay4)

% compute and display results for a large operator
lap8 = laplacian(8.0);
conv8 = conv2D(yacht,lap8);
zc8 = zeros2D(conv8);
zcMap8 = zcMap(zc8,0.0);
overlay8 = overlayZC(yacht,zcMap8);
imtool(overlay8)
