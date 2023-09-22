img = imread('ali.jpg');
[row,col,b1] = size(img);
r = img(:,:,1);
black = zeros(row,col,'uint8');
redband = cat(3, r, black, black);

subplot(1, 2, 1);
imshow(img);
title('Original Image');

subplot(1, 2, 2);
imshow(redband);
title('Red Channel');