function[Out]=SecondDerivImage(image,sigma)
temp1=diff(image,1,1);
temp2=diff(temp1,1,2);
Out=imgaussfilt(temp2,sigma);


