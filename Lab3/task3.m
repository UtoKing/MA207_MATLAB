close,clc,clear;

t=linspace(0,8*pi,100);
x_t=t.*sin(t);
y_t=t.*cos(t);
z_t=t;

plot3(x_t,y_t,z_t,'b-');
axis([-30,30,-30,30,0,30]);
xlabel('x');
ylabel('y');
zlabel('z');
title('different view of curve');

M=moviein(360);
for i=0:359
    view(i,25);
    pause(0.05)
    M(i+1)=getframe(gcf);
end

printgif('task3.gif',M,0.05);