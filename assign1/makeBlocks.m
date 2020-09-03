% makeBlocks.m
% script that illustrates the use of the addBlock and addCircle functions

image = uint8(zeros(100, 100));      % create initial blank image

% add three rectangular blocks
image = addBlock(image, 20, 50, 10, 40, 200);
image = addBlock(image, 40, 70, 30, 70, 40);
image = addBlock(image, 60, 90, 50, 90, 100);

% add two circular blocks
% image = addCircle(image, 25, 75, 20, 255);
% image = addCircle(image, 80, 20, 15, 150);

imshow(image)
