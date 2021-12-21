clear,clc,close

num=2e4;

x1=2*rand(num,1)-1;
y1=(2*rand(num,1)-1).*sqrt(1-x1.^2);
mean(x1),mean(y1)
cov(x1,y1)
% plot(x1,y1,'.')
% axis equal

r=rand(num,1);
theta=2*pi*rand(num,1);
x2=r.*cos(theta);
y2=r.*sin(theta);
mean(x2),mean(y2)
cov(x2,y2)
% plot(x2,y2,'.')
% axis equal

