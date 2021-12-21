close,clc,clear;

load("x.mat");
load("y.mat");
load("z.mat");
x=table2array(x);
y=table2array(y);
z=table2array(z);

[x_new,y_new]=meshgrid(0:2:560);
z_new=interp2(x,y,z,x_new,y_new);
mesh(x_new,y_new,z_new)
hold on
contour3(x_new,y_new,z_new,[135,135],'b')

[~,j]=max(max(z_new));
[~,i]=max(z_new(:,j));
text(x_new(1,j),y_new(i),z_new(i,j),'\leftarrow Maximum')

