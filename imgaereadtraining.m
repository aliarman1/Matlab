clc;clear all;
img = imread('mypic.jpg');
rgbimg = rgb2gray(img);

% figure(1);
subplot(2,3,1);
imshow(img);
title('Original Picture');

% GrayScale Image
subplot(2,3,2);
imshow(rgbimg);
title('Black And White');


% Negative imgae
negimg = 255 - rgbimg;
subplot(2,3,3);
imshow(negimg);
title('Negative Image');
rgbimg = rgb2gray(img);

% Horizontal Flip
hflip = img(:,end:-1:1,:);
subplot(2,3,4);
imshow(hflip);
title('Horizontal Flip');

% Vertical Flip
vflip = img(end:-1:1,:,:);
subplot(2,3,5);
imshow(vflip);
title('Vertical Flip');
