clf,clear,clc;
func_f=@(x) nthroot((12.*x+sin(x)-1),3);
% func_f=@(x) 1/12*(x^3-sin(x)+1);

fplot(func_f)
hold on
axis on
fplot(@(x) x)

x=zeros(2,1);
y=zeros(2,1);
x(2)=rand*2-4;
y(2)=func_f(x(2));
x(1)=x(2);
y(1)=0;
Expplot7_3(x,y,0.5);

for i=1:5
    x(1)=x(2);
    y(1)=y(2);
    y(2)=func_f(x(1));
    Expplot7_3(x,y,0.5)
    x(1)=x(2);
    y(1)=y(2);
    x(2)=y(2);
    Expplot7_3(x,y,0.5)
    pause(0.5)
end