close,clc,clear;

t=linspace(0,8*pi,1000);
x_t=t.*sin(t);
y_t=t.*cos(t);
z_t=t;

plot3(0,0,0);
axis([-30,30,-30,30,0,30]);
hold on
xlabel('x');
ylabel('y');
zlabel('z');
title('Using comet function');
comet3(x_t,y_t,z_t);