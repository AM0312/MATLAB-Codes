a=input("Enter matrix:");
x=input("Enter initial eigen value guesses:");
tol=input("Enter tolerance:");
n=length(a);
q=0;
error=10;
while error>tol
    y=a*x;
    k=max(y(:));
    x(:)=y(:)/k;
    error=abs(k-q);
    q=k;
end
disp(k);