n=3;
C=[4.63  -1.21 3.22;-3.07 5.48 2.11;1.26 3.11 4.57];
b=[2.22 -3.17 5.11];
B=b';
A=[C B];
x=zeros(1,n);
determinant=det(C);
if determinant==0
    print('Not solvable as determinant is zero');
else
    for i=1:(n-1)
        for j=(i+1):n
            m=A(j,i)/A(i,i);
            A(j,:)=A(j,:)-m*A(i,:);
        end
    end
    disp(A);
    for p=n:-1:1
        sum1=0;
        for r=2:n
            sum1=sum1+A(p,r)*x(r);
        end
        x(p)=(A(p,n+1)-sum1)/A(p,p);
    end
    disp(x');
end
