clc; clear all;
I = imread("mypic.jpg");

subplot(121);
imshow(I);
title("Input Image");

%Segment into three regions
[L, Centers] = imsegkmeans(I,3);
B = labeloverlay(I,L);

subplot(122);
imshow(B);
title("Labeled Image");