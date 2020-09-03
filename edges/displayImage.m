function displayImage(image, border)
% displayImage(image, border)
% Short-cut function to invoke imtool with the input image, using the 
% range of values contained within a central region that excludes a 
% border around the outer edge of the image
[minV, maxV] = getRange(image, border);
imtool(image, [minV maxV])
