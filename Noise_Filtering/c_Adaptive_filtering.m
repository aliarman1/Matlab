clc; clear all;
I=imread('mypic.jpg');
I = rgb2gray(I);

rank=[1,2,5,9];
[m,n]=size(I);
 
figure(1);
subplot(2,3,1);
imshow(I);
title('Input image');
for k=1:4
  c=zeros(m-2,n-2);
  for i=1:m-2
    for j=1:n-2
      ss = sort(reshape(I(i:i+2, j:j+2), [1,9]));
      c(i+1,j+1)=ss(rank(k));
    end
  end
  subplot(2,3,k+1);
  imshow(mat2gray(c));
  title(sprintf('Order statics filter image. rank=%s',num2str(k)));
end
