function[L,U,x]=LU(A,B)
[m,n]=size(A);
if (m ~= n )
    disp ( 'Matrix must be square' );
    return;
end
  L=zeros(n,n);
  U=zeros(n,n);
  for i=1:n
    for j=1:i-1
        L(i,j)=A(i,j);
        for k=1:j-1
            L(i,j)= L(i,j)-L(i,k)*U(k,j);
        end
            L(i,j) = L(i,j)/U(j,j);
    end
    for j=i:n
        U(i,j) = A(i,j);
        for k=1:i-1
            U(i,j)= U(i,j)-L(i,k)*U(k,j);
        end
    end
  end
  for i=1:n
    L(i,i)=1;
  end
  disp(U);
  disp(L);
  y=zeros(n,1);
  y(1)=B(1)/L(1,1);
  for i=2:n
    y(i)=-L(i,1)*y(1);
    for j=2:i-1
        y(i)=y(i)-L(i,j)*y(j);
        y(i)=(B(i)+y(i))/L(i,i);
    end
  end
  x=zeros(n,1);
  x(1)=y(1)/U(1,1);
  for i=2:m
    x(i)=-U(i,1)*x(1);
    for j=i:n
      x(i)=x(i)-U(i,j)*x(j);
      x(i)=(y(i)+x(i))/U(i,i);
    end
  end
  disp(x);