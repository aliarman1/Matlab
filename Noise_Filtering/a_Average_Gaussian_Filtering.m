clc; clear all;
img = imread('mypic.jpg');
img = rgb2gray(img);
img = im2double(img);
 
f1 = (1/9)*ones(3);
f2 = (1/16)*[1 2 1; 2 4 2; 1 2 1];
 
nimg = imnoise(img, 'salt & pepper', 0.02);
nimg = double(nimg); 
 
f1img = filter2(f1, nimg);
f2img = filter2(f2, nimg);

% Display image
subplot(2,2,1);
imshow(img);
title("Original Image");
subplot(2,2,2);
imshow(nimg);
title("Noise Img");
subplot(2,2,3);
imshow(f1img);
title("1/9 Avg filter");
subplot(2,2,4);
imshow(f2img);
title("1/16 Gaussian Filter");

