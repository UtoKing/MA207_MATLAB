clc,clear,clf,close

func=@(x) (3./(0.05+x(:,1).^2+x(:,2).^2+0.01*x(:,1))).^2+(x(:,1).^2+x(:,2).^2).^2;
xi = linspace(-5,5,300);
yi = linspace(-5,5,300);
[X,Y] = meshgrid(xi,yi);
Z = func([X(:),Y(:)]);
Z = reshape(Z,size(X));
surf(X,Y,Z,'MeshStyle','none')
xlabel('x(1)')
ylabel('x(2)')
title('f(x)')
hold on
contour3(X,Y,Z,10)

figure(2)
contour(X,Y,Z)

[x,fval]=ga(@(x) -1*func(x),2,[],[],[],[],[-1 -1],[1 1],[]);
disp(x)
disp(fval)