clc;clear all;
img = imread('mypic.jpg');

% figure(1);
subplot(2,3,1);
imshow(img);
title('Original Picture');

% GrayScale Image
subplot(2,3,2);
rgbimg = rgb2gray(img);
imshow(rgbimg);
title('Black And White');


% Negative imgae
negimg = 255 - rgbimg;
subplot(2,3,3);
imshow(negimg);
title('Negative Image');

% Horizontal Flip
hflip = rgbimg(:,end:-1:1);
subplot(2,3,4);
imshow(hflip);
title('Horizontal Flip');

% Vertical Flip
vflip = rgbimg(end:-1:1,:);
subplot(2,3,5);
imshow(vflip);
title('Vertical Flip');
