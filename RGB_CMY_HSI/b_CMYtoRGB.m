clc; clear all;
img = imread('mypic.jpg');
nI = double(img) / 255;
cmy_img = 1 - nI;

% CMY channels
cC = cmy_img;
cC(:,:,[2,3]) = 1;

cM = cmy_img;
cM(:,:,[1,3]) = 1;

cY = cmy_img;
cY(:,:,[1,2]) = 1;

% CMY show
subplot(2,4,1);
imshow(cC);
title('C');
subplot(2,4,2);
imshow(cM);
title('M');
subplot(2,4,3);
imshow(cY);
title('Y');
subplot(2,4,4);
imshow(cmy_img);
title('CMY Image');

% RGB channels
R = 1 - cC;
G = 1 - cM;
B = 1 - cY;

% RGB image combined
r = R(:,:,1);
g = G(:,:,2);
b = B(:,:,3);
rgbImage = cat(3, r, g, b);

% Display RGB
subplot(2,4,5);
imshow(R);
title('Red');
subplot(2,4,6);
imshow(G);
title('Green');
subplot(2,4,7);
imshow(B);
title('Blue');

% Display the RGB image
subplot(2,4,8);
imshow(rgbImage);
title('Converted RGB Image');
