C=input("Enter coefficient matrix:");
B=input("Enter constants in column form:");
n=length(B);
x=zeros(n);
max_error=input("Enter tolerance:");
error=10;
while(error>max_error)
    old=x;
    for i=1:n
        sum1 = 0;
        for j=1:n
            if (i~=j)
                sum1=sum1+C(i,j)*x(j);
            end
        end
        x(i)=(-sum1+B(i))/C(i,i);
    end
    for i=1:n
        error=max(0,abs(x(i)-old(i)));
    end
end
disp(x);