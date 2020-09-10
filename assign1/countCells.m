% load the color image cells.jpg
cells = imread('cells.jpg');
imtool(cells)

% convert color image to a gray-level image  
cells_gray = rgb2gray(cells);
imtool(cells_gray)

% convert gray-level image to binary image
cells_binary = (cells_gray <= 222);
imtool(cells_binary)

% create and display binary image of a single cell
cell = cells_binary(270:330,120:180);
imtool(cell)

% find number of cells in the image 
pixels_per_cell = sum(sum(cell));
pixels_all_cells = sum(sum(cells_binary));
num_cell = pixels_all_cells/pixels_per_cell
