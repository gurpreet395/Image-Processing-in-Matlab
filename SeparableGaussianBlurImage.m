
function[out]=SeparableGaussianBlurImage(image,sigma)
tic
A =image;
A=double(A);
sz1 = sigma+1;
sz=ceil(sz1/2);
[x]=meshgrid(-sz:sz);
[y]=transpose(x);
M = size(x,1)-1;
N = size(y,1)-1;
final_Output=A;
Exp_comp_x = -(x.^2)/(2*sigma*sigma);
Exp_comp_y = -(y.^2)/(2*sigma*sigma);
Kernel_x= exp(Exp_comp_x)/(2*pi*sigma*sigma);
Kernel_y= exp(Exp_comp_y)/(2*pi*sigma*sigma);
Output=A;
for i = 1:size(A,1)-M
    for j =1:size(A,2)-N
        Output(i,j)=sum(sum( A(i:i+M,j:j+M).*Kernel_x));
   
    end
end
Output = uint8(Output);
figure,imagesc(uint8(Output));
for i = 1:size(Output,1)-M
    for j =1:size(Output,2)-N
      final_Output(i,j) = sum(sum(A(i:i+M,j:j+M).*Kernel_y));
    end
end
out = final_Output;
toc