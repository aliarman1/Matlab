clc; clear all;
I = imread("mypic.jpg");

subplot(131);
imshow(I);
title("Input Image");

%Segment into  regions
[L, Centers] = imsegkmeans(I,50);
B = labeloverlay(I,L);
j = label2rgb(L,im2double(Centers));

subplot(132);
imshow(B);
title("Labeled Image");
subplot(133);
imshow(j);
title("Color Quartized Image");
