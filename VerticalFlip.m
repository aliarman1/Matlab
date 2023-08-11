clc;clear all;
img = imread('mypic.jpg');
% figure(1);
subplot(1,2,1);
imshow(img);
title('Original Picture');
% Vertical Flip
vflip = img(end:-1:1,:,:);
subplot(1,2,2);
imshow(vflip);
title('Vertical Flip');