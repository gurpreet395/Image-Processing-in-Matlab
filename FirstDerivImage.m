function[out]=FirstDerivImage(im2,sigma)
im3=diff(im2,1);
%out=imgaussfilt(im3,sigma);
out=GaussianBlurImage(im3,sigma);
%figure,imshow(out1+128);