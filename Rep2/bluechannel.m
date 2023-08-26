clc;clear all;
rgbImage = imread('mypic.jpg');

blueChannel = rgbImage(:,:,3);

subplot(1, 2, 1);
imshow(rgbImage);
title('Original IMage');
subplot(1, 2, 2);
imshow(blueChannel);
title('Blue Channel');