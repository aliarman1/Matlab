clc; clear all;
img = imread('mypic.jpg');
I = img;
Im = img;
img = rgb2gray(img);
 
[m,n] = size(img);
output = zeros(m,n);

img=imnoise(img, 'salt & pepper', 0.05);

% Mean
for i =1:m
    for j = 1:n
        rmin = max(1,i-1);
        rmax = min(m,i+1);
        cmin = max(1,j-1);
        cmax = min(n,j+1);
        temp = img(rmin:rmax, cmin:cmax);
        output(i,j) = mean(temp(:));
    end
end
output = uint8(output);

% Meadian
m=medfilt2(img, [7 7]);
nI = (img==0 | img==255);
I_nn = img;
I_nn(nI) = m(nI);

%Rank
I = rgb2gray(I);
rank=2;
[m,n]=size(I);
c=zeros(m-2,n-1);
for i=1:m-2
  for j=1:n-2
    ss = sort(reshape(I(i:i+2, j:j+2), [1,9]));
    c(i+1,j+1)=ss(rank);
  end
end

% Display
subplot(321);
imshow(Im);
title("Original Image");
subplot(322);
imshow(img);
title("Noise Image");
subplot(323);
imshow(output);
title("Mean Filter");
subplot(324);
imshow(mat2gray(I_nn));
title("Media Filter");
subplot(325);
imshow(mat2gray(c));
title("Mode Filer");


