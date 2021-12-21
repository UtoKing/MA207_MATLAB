close;
clear;
x=-1:0.001:1;
y=x.*sin(1./x);
hold on;
plot(x,y)

ezplot('x*sin(1/x)',[-1,1]);

fplot('x*sin(1/x)',[-1,1]);
title('plot using plot,ezplot,fplot');
xlabel('x');
ylabel('y');

legend('using plot','using ezplot','using fplot');