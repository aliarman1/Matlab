img = imread('ali.jpg');
[row,col,b1] = size(img);
g = img(:,:,2);
black = zeros(row,col,'uint8');
greenband = cat(3, black, g, black);

subplot(1, 2, 1);
imshow(img);
title('Original Image');

subplot(1, 2, 2);
imshow(greenband);
title('Green Channel');
