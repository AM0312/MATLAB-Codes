a=input("Enter the coefficient matrix");
b=input("Enter the constant matrix(column form)");
c=length(a);
x=zeros(c);
n=input("Enter the number of iterations");
k=1;
while k<=n
    for i=1:c
        sum=b(i);
        for j=1:c
            if i~=j
                sum=sum-a(i,j)*x(j);
            end
        end
        x(i)=sum/a(i,i);
    end
    k=k+1;
end
disp(x(1:c))