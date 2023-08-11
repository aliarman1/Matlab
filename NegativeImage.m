clc;clear all;
img = imread('mypic.jpg');

% figure(1);
subplot(1,2,1);
imshow(img);
title('Original Picture');

% Negative imgae
rgbimg = rgb2gray(img);
negimg = 255 - rgbimg;
subplot(1,2,2);
imshow(negimg);
title('Negative Image');
