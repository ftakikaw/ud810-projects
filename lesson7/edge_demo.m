pkg load image;

%% read image
lena = imread('lena.png');
%%figure, imshow(lena), title('Original image, color');

%% convert to grayscale
lenaMono = rgb2gray(lena);
%%figure, imshow(lenaMono), title('Original image, monochrome');

%% make a blurred/smoothed version
h = fspecial('gaussian', [11,11], 4);
%%figure, surf(h);
lenaSmooth = imfilter(lenaMono, h);
figure, imshow(lenaSmooth), title('Smoothed image');

%% method 1: shift left and right, and show diff image
lenaL = lenaSmooth;
lenaL(:, [1:(end-1)]) = lenaL(:, [2:end]);
lenaR = lenaSmooth;
lenaR(:, [2:(end)]) = lenaR(:, [1:(end-1)]);
lenaDiff = double(lenaR) - double(lenaL);
figure, imshow(lenaDiff, []), title('Difference between right and left shifted images');

%% method 2: canny edge detector
cannyEdge = edge(lenaMono, 'canny');
figure, imshow(cannyEdge), title('Original edges');

%% method 3: laplacian of Gaussian
logEdges  = edge(lenaMono, 'log');
figure, imshow(logEdges), title('Laplacian of Gaussian'); 