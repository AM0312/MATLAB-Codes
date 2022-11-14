n=3;
C=[10 8 -3;2 10 1;3 -4 10];
b=[2 3 5];
B=b';
x=[0;0;0];
max_error=10^-4;
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