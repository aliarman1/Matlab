img = imread('ali.jpg');
[row,col,b1] = size(img);
r = img(:,:,1);
g = img(:,:,2);
b = img(:,:,3);
black = zeros(row,col,'uint8');
redband = cat(3, r, black, black);
greenband = cat(3, black, g, black);
blueband = cat(3, black, black, b);
combinedimg = cat(3, r, g, b);

subplot(2, 3, 1);
imshow(img);
title('Original Image');

subplot(2, 3, 2);
imshow(redband);
title('Red Channel');

subplot(2, 3, 3);
imshow(greenband);
title('Green Channel');

subplot(2, 3, 4);
imshow(blueband);
title('Blue Channel');

subplot(2, 3, 5);
imshow(combinedimg);
title('Combined Image');