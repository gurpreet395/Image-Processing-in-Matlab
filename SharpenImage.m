function[out]=SharpenImage(im3,sigma,alp)

im7=SecondDerivImage(im3,sigma);
im7=padarray(im7,[1,1],'replicate','pre');
im9=alp*im7;
size(im9)
size(im3)
out=im3-im9;

