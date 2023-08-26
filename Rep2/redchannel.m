clc;clear all;
rgbImage = imread('mypic.jpg');

redChannel = rgbImage(:,:,1);

subplot(1, 2, 1);
imshow(rgbImage);
title('Original IMage');
subplot(1, 2, 2);
imshow(redChannel);
title('Red Channel');