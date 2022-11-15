f=input("Enter function: ");
a=input("Enter first initial guess x0: ");
b=input("Enter second initial guess x1: ");
tol=input("Enter tolerance: ");
error=1;
while(error>tol)
    c=b-(f(b)*(b-a)/(f(b)-f(a)));
    error=abs(b-a);
    a=b;
    b=c;
end
disp(a);