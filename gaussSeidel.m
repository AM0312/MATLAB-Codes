a=input("Enter the coefficient matrix:");
b=input("Enter the constant matrix(column form):");
c=length(a);
x=zeros(c);
tol=input("Enter tolerance:");
error=100;
while error>tol
    old=x;
    for i=1:c
        sum=b(i);
        for j=1:c
            if i~=j
                sum=sum-a(i,j)*x(j);
            end
        end
        x(i)=sum/a(i,i);
    end
    for i=1:n
        error=max(0,abs(x(i)-old(i)));
    end
end
disp(x)