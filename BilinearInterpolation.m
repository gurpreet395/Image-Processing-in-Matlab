function[out1,out2]=BilinearInterpolation(input)

out1=input;
out2=input;
for i = 1:size(input, 1)-4
  for j = 1:size(input, 2)-4
      for k=1:3
          for l=1:3
              out1(i+k,j+l)=(1-k)*(1-l)*(input(i,j))+(k*(1-l)*input(i+4,j))+((1-k)*l*input(i,j+4))+(k*l*input(i+4,j+4));
              out2(i+k,j+l)=input(i+k+1,j+k+1);
          end
      end
     j=j+4; 
  end
  i=i+4;
end

 