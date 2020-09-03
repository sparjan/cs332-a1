function g = gauss2D(sigma)
% g = gauss2D(sigma)
% Returns a square 2D matrix of samples of the 2D Gaussian function. The  
% matrix has size 8*sigma+1 and x,y values range from -4*sigma to +4*sigma
range = fix(4*sigma);
g = zeros(2*range+1, 2*range+1);
s2 = 1.0/(sigma^2);
for x = -range:range
    for y = -range:range
        dist2 = x^2 + y^2;
        g(x+range+1, y+range+1) = s2*exp(-0.5*s2*dist2);
    end
end
