close,clc,clear;

x=-2:0.02:2;
y=x';
[X,Y]=meshgrid(x,y');
F = X.*exp(-X.^2-Y.^2);

surf(x,y,F);
hold on
xlabel('x');
ylabel('y');
zlabel('z');
title('f(x)=x*exp(-x^2-y^2) and its gradient');
mesh(x,y,F);

ax=gca;
ax.TickDir = 'out';
ax.TickLength = [0.02 0.02];

[fx,fy] = gradient(F,0.02);
x0 = 0.2;
y0 = 0;
z0=x0.*exp(-x0.^2-y0.^2);
alpha=0.02;
plot3(x0,y0,z0,'*');

X_grad(1)=x0;
Y_grad(1)=y0;
Z_grad(1)=z0;
n=1;

while(1)
t = (abs(x-x0)<0.01) & (abs(y-y0)<0.01);
indt = find(t);
f_grad = [fx(indt) fy(indt)];
if f_grad(1)^2+f_grad(2)^2<0.001
    break;
end
X0=[x0 y0]-alpha*f_grad;
x0=X0(1);
y0=X0(2);
z0=X0(1).*exp(-X0(1).^2-X0(2).^2);
n=n+1;
X_grad(n)=x0;
Y_grad(n)=y0;
Z_grad(n)=z0;
end

scatter3(X_grad,Y_grad,Z_grad,'*');
legend('f(x)=x*exp(-x^2-y^2)','','gradient');
text(X_grad(end),Y_grad(end),Z_grad(end),'\leftarrow it has zero gradients');

hold off

%查看向量场和等高线取消掉注释
% contour(x,y,F,'DisplayName','contour plot')
% hold on
% 
% quiver(X,Y,fx,fy,'DisplayName','vector field')
% xlabel('x');
% ylabel('y');
% title('contour plot and vector field');