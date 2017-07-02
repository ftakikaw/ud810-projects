pkg load image;

img = imread('shapes.png');
grays = rgb2gray(img);
edges = edge(grays, 'canny');

%%figure, imshow(img), title('Original image');
%%figure, imshow(grays), title('Grayscale');
%%figure, imshow(edges), title('Edge pixel');

%%apply hough transform
h = houghtf (edges, 'line');
%%
##[r c] = immaximas (h);
figure, imagesc(h), title('Hough accumulator');
%%
%%
%%figure, imshow(edges), title('Edge pixel');