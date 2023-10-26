clc; clear all;
rgbImage = imread('mypic.jpg');
rgbImage = double(rgbImage) / 255;

% rgb channel
R = rgbImage(:,:,1);
G = rgbImage(:,:,2);
B = rgbImage(:,:,3);

% intensity (I)
I = (R + G + B) / 3;

% minimum of R, G, and B
minRGB = min(min(R, G), B);

% saturation (S)
S = 1 - 3 * minRGB ./ (R + G + B + eps);

% hue (H)
theta = acos(0.5 * ((R - G) + (R - B)) ./ (sqrt((R - G).^2 + (R - B) .* (G - B)) + eps));
H = theta;
H(B > G) = 2 * pi - H(B > G);
H = H / (2 * pi);
hsiImage = cat(3, H, S, I);
% Image Show
subplot(1,2,1);
imshow(rgbImage); 
title("Original Image");
subplot(1,2,2);
imshow(hsiImage);
title("HSI Image");
 

