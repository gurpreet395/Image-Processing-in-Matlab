function[out1]=FindPeaksImage(image,threshold)
[temp1,temp2]=SobelImage(image);
for i = 1:size(temp1, 1)
  for j = 1:size(temp1, 2)
  if temp1(i,j,1)>threshold
      temp1(i,j)=temp1(i,j);
  else
      temp1(i,j)=0;
  end
  end
end
out1=temp1;


