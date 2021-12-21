close;
clear;
clc;

A=input('Input three numbers are:');

%Method 1
delta=A(2)^2-4*A(1)*A(3);
x1=(-A(2)+sqrt(delta))/(2*A(1));
x2=(-A(2)-sqrt(delta))/(2*A(1));
[x1,x2]

%Method 2
roots(A)

%Method 3
x1_old=-101;
x1_new=-100;
while(abs(x1_old-x1_new)>0.0001)
    x1_old=x1_new;
    y=A(1)*x1_old^2+A(2)*x1_old+A(3);
    b=y-(2*A(1)*x1_old+A(2))*x1_old;
    x1_new=-b/(2*A(1)*x1_old+A(2));
end
x2_old=-101;
x2_new=-100;
while(abs(x2_old-x2_new)>0.0001)
    x2_old=x2_new;
    y=A(1)*x2_old^2+A(2)*x2_old+A(3);
    b=y-(2*A(1)*x2_old+A(2))*x2_old;
    x2_new=-b/(2*A(1)*x2_old+A(2));
end
[x1_new,x2_new]
    
    