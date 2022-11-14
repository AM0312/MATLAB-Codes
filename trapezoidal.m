f=input("Enter the function");
a=input("Enter the lower range");
b=input("Enter the upper range");
n=input("Enter the number of subintervals");
h=(b-a)/n;
sum=0;
for i=1:n-1
    x=a+h*i;
    sum=sum+2*f(x);
end
sum=sum+f(a)+f(b);
answer=sum*(h/2);
disp(answer);