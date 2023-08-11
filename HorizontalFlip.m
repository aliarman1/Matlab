clc;clear all;
img = imread('mypic.jpg');
% figure(1);
subplot(1,2,1);
imshow(img);
title('Original Picture');
% Horizontal Flip
hflip = img(:,end:-1:1,:);
subplot(1,2,2);
intth=uint8(hflip);
imshow(intth);
title('Horizontal Flip');