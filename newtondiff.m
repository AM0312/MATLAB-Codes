x=input("Enter values of x:");
y=input("Enter function values:");
x0=input('Now enter a point at which to evaluate the polynomial, x = ');
n=length(x);
D=ones(n+1,n+1);
for i=1:n
   D(i,1)=y(i);
end
for i=2:n
   for j=2:i
       D(i,j)=(D(i,j-1)-D(i-1,j-1))/(x(i)-x(i-j+1));
   end
end
fx0=D(n,n);
for i=n-1:-1:1
   fx0=fx0*(x0-x(i))+D(i,i);
end
disp(fx0);