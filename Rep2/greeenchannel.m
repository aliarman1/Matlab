clc;clear all;
rgbImage = imread('mypic.jpg');

greenChannel = rgbImage(:,:,2);

subplot(1, 2, 1);
imshow(rgbImage);
title('Original IMage');
subplot(1, 2, 2);
imshow(greenChannel);
title('Green Channel');