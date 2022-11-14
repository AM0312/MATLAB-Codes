a=input("Enter the matrix");
x=input("Enter the intial guess in form of coloumn matrix");
tol=input("Enter the tolerance");
b=length(a);
q=0;
error=12;
while error>=tol
    y=a*x;
    for i=1:b-1
        if(y(i)>=y(i+1))
            k=y(i);
        else
            k=y(i+1);
        end
    end
    for i=1:b
        x(i)=y(i)/k;
    end
    error=abs(k-q);
    q=k;
end
disp(k)
disp(y(1:b))