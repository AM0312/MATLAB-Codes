a=input("Enter the coefficient matrix");
b=input("Enter the constant matrix(column form)");
w=input("Enter the value of relaxation parameter");
error=10;
n=length(a);
x=zeros(n);
max_error=input("Enter tolerance");
while (error>max_error)
    old=x;
    for i=1:n
        sum=0;
        for j=1:n
            if i~=j
                sum=sum+a(i,j)*x(j);
            end
        end
        x(i)=w*((b(i)-sum)/a(i,i))+(1-w)*x(i);
    end
    for i=1:n
        error=max(0,abs(x(i)-old(i)));
    end
end