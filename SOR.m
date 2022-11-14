a=input("Enter the coefficient matrix");
b=input("Enter the constant matrix(column form)");
w=input("Enter the value of relaxation parameter");
tol=input("Enter the value of tolerance");
error=10;
c=length(a);
x=(1:c);
e=(1:c);
for i=1:c
    x(i)=input("Initial value of x");
end
p=x;
k=1;
while error>=tol
    for i=1:c
        sum=b(i);
        for j=1:c
            if i~=j
                sum=sum-a(i,j)*x(j);
            end
        end
        x(i)=sum*w/a(i,i)+(1-w)*p(i);
        e(i)=abs(x(i)-p(i));
        p(i)=x(i);
        error=max(e(i:c));
    end
    k=k+1;
end
disp(x(1:c))