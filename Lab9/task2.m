clc,clear,close;

x=[1 2 4 7 9 12 13 15 17];
F=[1.5 3.9 6.6 11.7 15.6 18.8 19.6 20.6 21.1];
plot(x,F,'.')
hold on
fun_1=@(k,x) k*x;
k=lsqcurvefit(fun_1,0,x(1:5),F(1:5));
disp(k)
fplot(@(x) k*x)

x_new=9:0.1:20;
y_new=interp1(x(6:end),F(6:end),x_new,'spline');
plot(x_new,y_new)