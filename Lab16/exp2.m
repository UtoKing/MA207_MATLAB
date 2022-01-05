clc,clear,close

x=dlarray([1;-1]);
w1=[0 -1 -2
    1 0 -1]';
b1=[1;2;3];
y=w1*x+b1;
y=relu(y);
w2=[0 1
    -1 0
    -2 -1]';
b2=[-1;-2];
z=w2*y+b2;
z=relu(z);
w3=[1;2]'-1/2;
u=w3*z;

disp(u)
