a=input("enter matrix");
n=length(a)-1;
x=zeros(n,1);
%[10,-7,3,5,6;-6,8,-1,-4,5;3,1,4,11,2;5,-9,-2,4,7]
for i=1:n-1
    for j=i+1:n
        m=a(j,i)/a(i,i);
        a(j,:)=a(j,:)-m*a(i,:);
    end
end
x(n)=a(n,n+1)/a(n,n);
for i=(n-1):-1:1
    x(i)=(a(i,n+1)-a(i,i+1:n)*x(i+1:n))/a(i,i);   
end
disp(x);