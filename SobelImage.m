function[magnitude,direction]=SobelImage(im2)
temp1=(im2);
temp=double(temp1);
direction=zeros(size(temp));
for i = 2:size(temp, 1)-2
  for j = 2:size(temp, 2)-2
         % x-direction:
         Gx=((2*temp(i+2,j+1)+temp(i+2,j)+temp(i+2,j+2))-(2*temp(i,j+1)+temp(i,j)+temp(i,j+2)));
         %y-direction:
         Gy=((2*temp(i+1,j+2)+temp(i,j+2)+temp(i+2,j+2))-(2*temp(i+1,j)+temp(i,j)+temp(i+2,j)));
         temp1(i,j)=sqrt(Gx^2+Gy^2); %magnitude of the edge
         direction(i,j)=atan(Gy/Gx); %direction of the edge
  end
end
magnitude=temp1;
direction=double(direction);
