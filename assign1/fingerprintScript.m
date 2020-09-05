% fingerprintScript.m
% script for loading and processing fingerprint images to determine who
% stole Captain Abstraction's suit!

% load four known fingerprint images and convert to double type numbers
takis = double(imread('takis.jpg'));
sohie = double(imread('sohie.jpg'));
orit = double(imread('orit.jpg'));
brian = double(imread('brian.jpg'));

% read in the unknown partial fingerprint image
finger = double(imread('finger.jpg'));

% display the four known fingerprint images in a 2x2 arrangement within a
% single figure window, and display the unknown partial fingerprint in a
% separate figure window
figure
subplot(2,2,1)
imshow(takis, [])
title('takis')
subplot(2,2,2)
imshow(sohie, [])
title('sohie')
subplot(2,2,3)
imshow(orit, [])
title('orit')
subplot(2,2,4)
imshow(brian, [])
title('brian')
figure, imshow(finger, [])

function int = getMatch(image1, image2)
% convert to double to enable floating-point calculation of average
im1 = double(image1);
im2 = double(image2);
[xdim, ydim] = size(im2); % 240x256
patch = zeros(20,20); % 20x20 patch 
tempPatch = zeros(20,20);
value = 1000;
for row = 21:xdim-20 
    for col = 21:ydim-20
        tempPatch(row,col)= abs(im1(row,col)-im2(row,col));
        tempValue = sum(patch);
        if (tempValue < value)
            value = tempValue;
            patch = tempPatch;
        end
    end
end
int = value;
end

% determine how strong a match there is between the unknown partial print 
% and the best-matching subregion of each known fingerprint image
% takisMatch = getMatch(finger, takis);
% sohieMatch = getMatch(finger, sohie);
% oritMatch = getMatch(finger, orit);
% brianMatch = getMatch(finger, brian);

% determine the culprit and print their identity - the names of the 
% suspects are stored as strings inside a cell array that is created
% and indexed using curly braces {}
% matches = [takisMatch sohieMatch oritMatch brianMatch];
% names = {'Takis' 'Sohie' 'Orit' 'Brian'};
% [minv, mini] = min(matches);
% disp(['Sadly, ' names{mini} ' is the culprit :(']);

