%% Load an image
img = imread('SecurityAndMaintenance_Alert.png');
imshow(img);

%% Add some noise
noise_sigma = 25;
noise = randn(size(img)) .* noise_sigma;
noise_img  = img + noise;
imshow(noise_img);

%% Create a Gaussian filter
filter_size = 11;
filter_sigma = 2;
pkg load image;
filter = fspecial('gaussian', filter_size, filter_sigma);

%% Apply the filter
smoothed = imfilter(noise_img, filter);
imshow(smoothed);