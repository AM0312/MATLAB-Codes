xx=input("Enter values of x: ");
yy=input("Enter values of function: ");
x=input("Enter point to interpolate: ");
n=length(xx);
L=ones(n);
for i=1:n
    for j=1:n
        if (j~=i)
            L(i,:)=L(i,:)*(x-xx(j))/(xx(i)-xx(j));
        end
    end
end
disp(L);
sum=0;
for i=1:n
    sum=sum+yy(i)*L(i,:);
end
disp(sum);