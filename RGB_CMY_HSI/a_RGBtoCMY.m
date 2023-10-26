clc; clear all;
img=imread('mypic.jpg');
[row,col,b1] = size(img);

r = img(:,:,1);
black = zeros(row,col,'uint8');
RED = cat(3, r, black, black);
g = img(:,:,2);
black = zeros(row,col,'uint8');
GREEN = cat(3, black, g, black);
b = img(:,:,3);
black = zeros(row,col,'uint8');
BLUE = cat(3, black, black, b);

RED = double(RED/255);
GREEN = double(GREEN/255);
BLUE = double(BLUE/255);

%cmy cal
c = 1.0-RED;
m = 1.0-GREEN;
y = 1.0-BLUE;

%cmy combined
I = img;
nI = double(I)/255;
cmy_img = 1 - nI;

%Showing Images
subplot(2,4,1);
imshow(RED);
title('RED');
subplot(2,4,2);
imshow(GREEN);
title('Green');
subplot(2,4,3);
imshow(BLUE);
title('Blue');
subplot(2,4,4);
imshow(I);
title('Original');
subplot(2,4,5);
imshow(c);
title('C');
subplot(2,4,6);
imshow(m);
title('M');
subplot(2,4,7);
imshow(y);
title('Y');
subplot(2,4,8);
imshow(cmy_img);
title('Converted CMY Image');


