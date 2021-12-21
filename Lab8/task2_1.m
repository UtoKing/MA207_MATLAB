A=diag(ones(1,20)*3)+diag(ones(1,19),1)+diag(ones(1,19),-1)+...
    diag(ones(1,18),2)+diag(ones(1,18),-2);
b=rand(20,1);

x=zeros(20,100);
x(:,1)=rand(20,1);

D = diag(diag(A));
R = A-D;

for i = 2:100
    x(:,i)=D\(b-R*x(:,i-1));
end

plot(x,'.')