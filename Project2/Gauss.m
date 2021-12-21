function[A,x]=Gauss(N)
i=N;
f=((sym('t'))^2-1)^i;
f=diff(f,i);
t=solve(f);
X=zeros(i,i);
B=zeros(i,1);
for j=1:i
    for k=1:i
        X(j,k)=t(k)^(j-1);
    end
    if mod(j,2)==0
        B(j)=0;
    else
        B(j)=2/j;
    end
end
X=inv(X);
A=zeros(i,1);
x=zeros(i,1);
for j=1:i
    A(j)=0;
    x(j)=0;
    for k=1:i
        A(j)=A(j)+X(j,k)*B(k);
        x(j)=x(j)+t(j);
    end
    x(j)=x(j)/k;
end
end