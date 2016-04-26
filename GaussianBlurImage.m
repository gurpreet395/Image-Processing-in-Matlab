function[Out]=GaussianBlurImage(image, sigma)
tic
A=image;
I=double(A);
Output=image;
sz1 = sigma+1;
window_size=ceil(sz1/2);
[x,y]=meshgrid(-window_size:window_size,-window_size:window_size);
M = size(x,1)-1;
N = size(y,1)-1;
Exp_comp = -(x.^2+y.^2)/(2*sigma*sigma);
Kernel= exp(Exp_comp)/(2*pi*sigma*sigma);
I = padarray(I,[window_size,window_size]);
%Convolution 
  for i = 1:size(I,1)-M
    for j =1:size(I,2)-N
        Output(i,j) =sum(sum( I(i:i+M,j:j+M).*Kernel));
        
    end
  end
Out= Output;
toc
