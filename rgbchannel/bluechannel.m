img = imread('ali.jpg');
[row,col,b1] = size(img);
b = img(:,:,3);
black = zeros(row,col,'uint8');
blueband = cat(3, black, black, b);

subplot(1, 2, 1);
imshow(img);
title('Original Image');

subplot(1, 2, 2);
imshow(blueband);
title('Blue Channel');