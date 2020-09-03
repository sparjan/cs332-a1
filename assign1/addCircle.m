function newImage = addCircle(image, xcenter, ycenter, radius, intensity)
% newImage = addCircle(image, xcenter, ycenter, radius, intensity)
% Given an input image, adds a circular block to the image and returns
% the modified image. The circle is centered at the input location
% (xcenter, ycenter) and has the input radius and shade of gray given by
% by the input intensity. If the image is stored in an 8-bit (uint8) 
% matrix, the input intensity should be in the range from 0 to 255

newImage = image;
for x = xcenter-radius:radius+xcenter
    for y = ycenter-radius:radius+ycenter
        if radius^2 >= ((y-ycenter)^2+(x-xcenter)^2)
            newImage(y,x) = intensity;
        end
    end
end
