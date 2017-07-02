% For Your Eyes Only
pkg load image;

frizzy = imread('frizzy.png');
froomer = imread('froomer.png');
imshow(frizzy);
imshow(froomer);

% TODO: Find edges in frizzy and froomer images
frizzy_gray = rgb2gray(frizzy);
froomer_gray = rgb2gray(froomer);

frizzy_edges = edge(frizzy_gray, 'canny');
froomer_edges = edge(froomer_gray, 'canny');
imshow(frizzy_edges);
imshow(froomer_edges);

% TODO: Display common edge pixels
imshow(frizzy_edges & froomer_edges); %binary AND