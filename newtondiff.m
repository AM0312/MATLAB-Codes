%n=input('Enter n:  ');
%x=zeros(1,n+1);
%y=zeros(n+1,n+1);

 %for i=0:n
  % x(i+1)=input(' ');
   %y(i+1,1)=input(' ');
 %end
 %x0=input('Now enter a point at which to evaluate the polynomial, x = ');

 %n=size(x,1);
 %if n==1
  %  n=size(x,2);
 %end

 %D=ones(n+1,n+1);
 %for i=1:n
  %  D(i,1)=y(i);
 %end

 %for i=2:n
  %  for j=2:i
   %    D(i,j)=(D(i,j-1)-D(i-1,j-1))/(x(i)-x(i-j+1));
    %end
 %end

 %fx0=D(n,n);
 %for i=n-1:-1:1
  %  fx0=fx0*(x0-x(i))+D(i,i);
 %end
 %disp(fx0);

 a=input("Enter all the values of x:  ");
b=input("Enter all the values of f(x):  ");
x=input("Enter the value of x where you want to find the value of function");
diff=a(2)-a(1);
s=(x-a(1))/diff;
n=length(a);
c=zeros(n);
d=zeros(n,n);
d(1:n,1)=b;
for i=2:n
    for j=2:i
        d(i,j)=(d(i,j-1)-d(i-1,j-1))/(a(i)-a(i-j+1));
    end
end
p=b(1);
sum=0;
q=s;
for i=2:n
    if i~=2
        for j=1:i-2
            q=q*(s-j);
        end
    end
    sum=sum+d(i,i)*(diff^i)*q/factorial(i);
end
p=p+sum;
disp(p)