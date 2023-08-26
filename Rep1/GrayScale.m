clc;clear all;
img = imread('mypic.jpg');

% figure(1);
subplot(1,2,1);
imshow(img);
title('Original Picture');

% GrayScale Image
subplot(1,2,2);
rgbimg = rgb2gray(img);
imshow(rgbimg);
title('Gray Scale');
