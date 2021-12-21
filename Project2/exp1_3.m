clc,clear

n=5;
[A,x]=Gauss(n);
vector_phi=zeros(n+1);
for i=0:n
    x_rand=x(1);
    temp=legendre(i,x_rand,'norm');
    vector_phi(i+1)=temp(1);
end

c=rand(n+1,1)*2-1;