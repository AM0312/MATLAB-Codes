g=input("Enter the suitable g function ");
a=input("Enter the initial approximation");
tol=input("Enter thr value of tolerance");
error=2;
while error>tol
    b=g(a);
    error=abs(a-b);
    a=b;
end
disp(a);