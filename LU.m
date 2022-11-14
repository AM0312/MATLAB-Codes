a=input("enter matrix");
n=length(a);
l=eye(n);
b=input("enter constants:");
for i=1:n-1
    for j=i+1:n
        m=a(j,i)/a(i,i);
        l(j,i)=m;
        a(j,:)=a(j,:)-m*a(i,:);
    end
end
y=l\b;
x=a\y;
disp(x);