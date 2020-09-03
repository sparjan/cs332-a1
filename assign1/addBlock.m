function newImage = addBlock(image, xleft, xright, ytop, ybottom, intensity)
% newImage = addBlock(image, xleft, xright, ytop, ybottom, intensity)
% Given an input image, adds a rectanglar block to the image and returns 
% the modified image. The horizontal coordinates of the block range from 
% xleft to xright and vertical coordinates range from ytop to ybottom 
% (where ytop < ybottom). The block is a shade of gray given by the 
% input intensity. If the image is stored in an 8-bit (uint8) matrix, the
% input intensity should be in the range from 0 to 255

newImage = image;
newImage(ytop:ybottom, xleft:xright) = intensity;

