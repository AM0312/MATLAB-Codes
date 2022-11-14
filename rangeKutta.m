f=@(t,y)((2*t*y)+exp(t)/(t^(2)+t*exp(t)));
t0=input('starting point');
y0=input('function value at t0');
h=input('step size');
t1=input('point where f should be calculated');
n=(t1-t0)/h;
for i=1:n
    k1=h*f(t0,y0);
    k2=h*f(t0+(h/2),y0+(k1/2));
    k3=h*f(t0+(h/2),y0+(k2/2));
    k4=h*f(t0+(h),y0+(k3));
    y1=y0+((k1+(2*k2)+(2*k3)+k4)/6);
    t0=t0+h;
    y0=y1;
end
display(y1);