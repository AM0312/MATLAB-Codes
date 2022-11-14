function y=lagrange(x,xx,yy)
n=size(xx,2);
L=ones(n,size(x,2));
if (size(xx,2)~=size(yy,2))
    disp("Error");
else
   for i=1:n
      for j=1:n
         if (i~=j)
            L(i,:)=L(i,:).*(x-xx(j))/(xx(i)-xx(j));
         end
      end
   end
   disp(L);
   sum=0;
   for i=1:n
      sum=sum+yy(i)*L(i,:);
   end
   disp(sum);
end