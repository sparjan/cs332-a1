function zc = zeros2D(conv)
% zc = zeros2D(conv)
% Returns a 2D matrix of the slopes of the zero-crossings of the input 
% 2D matrix of convolution results. A value of 0 is placed in locations 
% that do not correspond to zero-crossings
[xdim, ydim] = size(conv);
zc = zeros(xdim,ydim);
for x = 2:xdim
    for y = 2:ydim
        % check if adjacent convolution values have opposite sign
        if ((conv(x,y)*conv(x-1,y)) < 0) || ((conv(x,y)*conv(x,y-1)) < 0)
            dx = conv(x,y)-conv(x-1,y);      % calculate slope of
            dy = conv(x,y)-conv(x,y-1);         % zero-crossing
            zc(x,y) = sqrt(dx^2 + dy^2);
        end
    end
end  
