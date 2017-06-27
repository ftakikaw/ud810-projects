pkg load image;

%% Load an image
img = imread('fall-leaves.png');
imshow(img);

%% Create a Gaussian filter
filter_size = 11;
filter_sigma = 3;
filter = fspecial('gaussian', filter_size, filter_sigma);

%%apply it, specifying an edge parameter
smoothed = imfilter(img, filter, 'replicate');
imshow(smoothed);