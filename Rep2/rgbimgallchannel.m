clc;clear all;
rgbImage = imread('mypic.jpg');

redChannel = rgbImage(:,:,1);
greenChannel = rgbImage(:,:,2);
blueChannel = rgbImage(:,:,3);

subplot(1, 3, 1);
imshow(redChannel);
title('Red Channel');

subplot(1, 3, 2);
imshow(greenChannel);
title('Green Channel');

subplot(1, 3, 3);
imshow(blueChannel);
title('Blue Channel');
