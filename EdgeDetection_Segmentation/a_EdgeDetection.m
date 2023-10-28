clc; clear all;
input_image = imread("mypic.jpg");
I = input_image;

input_image = rgb2gray(input_image);
input_image = double(input_image);
filtered_image = zeros(size(input_image));

%Sobel Operator Mask
Mx = [-1 0 1; -2 0 2; -1 0 1];
My = [-1 -2 -1; 0 0 0; 1 2 1];

for i = 1: size(input_image, 1) - 2
    for j = 1: size(input_image, 2) - 2
        %Gradient Aproximations
        Gx = sum (sum(Mx.* input_image(i:i+2, j:j+2)));
        Gy = sum (sum(My.* input_image(i:i+2, j:j+2)));
        %Magnitude of Vectior
        filtered_image(i+1, j+1) = sqrt(Gx.^2 + Gy.^2);
    end
end
filtered_image = uint8(filtered_image);

%Treshold
thresholdValue = 100; %between [0, 255]
output_image = max(filtered_image,thresholdValue);
output_image(output_image == round(thresholdValue)) = 0;
output_image = im2bw(output_image);

%Display
subplot(221);
imshow(I);
title("Input Image");
subplot(222);
imshow(filtered_image);
title("Filtered Image");
subplot(223);
imshow(output_image);
title("Edge Detected Image");
