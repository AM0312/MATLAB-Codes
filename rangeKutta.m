f=input("Enter a two variable function(y,t):");
t0=input("Enter initial value:");
y0=input("Enter initial function value:");
t1=input("Enter value at which function is to be calculated:");
h=input("Enter step size:");
n=(t1-t0)/h;
for i=1:n+1
    k1=h*f(t0,y0);
    k2=h*f(t0+h/2,y0+k1/2);
    k3=h*f(t0+h/2,y0+k2/2);
    k4=h*f(t0+h,y0+k3);
    y1=y0+(k1+2*k2+2*k3+k4)/6;
    t0=t0+h;
    y0=y1;
end
disp(y1);