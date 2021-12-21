function dxdt=expfunc2(t,x)
sigma=10;
r=28;
b=8/3;
dxdt=zeros(3,1);
dxdt(1)=-sigma*x(1)+sigma*x(2);
dxdt(2)=r*x(1)-x(2)-x(1)*x(3);
dxdt(3)=x(1)*x(2)-b*x(3);
end