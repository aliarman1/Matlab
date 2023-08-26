originalImage = imread('mypic.jpg'); 

grayImage = rgb2gray(originalImage);

equalizedImage = histeq(grayImage);

subplot(2, 2, 1);
imshow(grayImage);
title('Original Image');

subplot(2, 2, 2);
imshow(equalizedImage);
title('Equalized Image');

subplot(2, 2, 3);
imhist(grayImage);
title('Histogram of Original Image');

subplot(2, 2, 4);
imhist(equalizedImage);
title('Histogram of Equalized Image');
