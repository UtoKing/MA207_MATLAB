clear,clc;

A=diag(ones(1,20)*3)+diag(ones(1,19),1)+diag(ones(1,19),-1)+diag(ones(1,18),2)+diag(ones(1,18),-2);
b=rand(20,1);
U=zeros(20);
for i=2:20
    U(1:i-1,i)=A(1:i-1,i);
end
L=A-U;

x=zeros(20,100);
x(:,1)=rand(20,1);
for i=2:100
    x(:,i)=(L\eye(20))*(b-U*x(:,i-1));
end

norm(x(:,end)-A\b)

plot(x,'b.')