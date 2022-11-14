f=input("Enter the function");
a=input("Enter the lower range");
b=input("Enter the upper range");
tol=input("Enter the value of tolerance");
error=2;
while error>=tol
    c=(a+b)/2;
    if f(a)*f(c)<0
        b=c;
    else
        a=c;
    end
        error=abs(a-b);
end
disp(c);