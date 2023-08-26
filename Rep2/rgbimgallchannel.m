clc;clear all;
rgbImage = imread('mypic.jpg');

redChannel = rgbImage(:,:,1);
greenChannel = rgbImage(:,:,2);
blueChannel = rgbImage(:,:,3);

subplot(2, 2, 1);
imshow(rgbImage);
title('Original Image');

subplot(2, 2, 2);
imshow(redChannel);
title('Red Channel');

subplot(2, 2, 3);
imshow(greenChannel);
title('Green Channel');

subplot(2, 2, 4);
imshow(blueChannel);
title('Blue Channel');
