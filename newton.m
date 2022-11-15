f=@(x)(x^2-5*x+6);
g=@(x)(2*x-5);
x=input("Enter initial approximation: ");
tol=input("Enter tolerance: ");
error=2;
while(error>tol)
    a=x-(f(x)/g(x));
    error=abs(x-a);
    x=a;
end
disp(x);