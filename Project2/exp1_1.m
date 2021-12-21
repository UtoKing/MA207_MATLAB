clc,clear

n=6;
[A,x_n]=Gauss(n+1);

p=zeros(n+1,1);
for i=1:n+1
    sum_phi=0;
    for j=0:n
        legendre_value=legendre(j,x_n(i),'norm');
        sum_phi=sum_phi+legendre_value(1)^2;
    end
    p(i)=A(i)*sum_phi/(n+1);
end

disp(sum(p))
