close,clc,clear;

t=0:0.02:2*pi;
x=(cos(t)).^3;
y=(sin(t)).^3;
plot(x,y);hold on;
set(gca,'XAxisLocation','origin','YAxisLocation','origin','yTick',[-2:1:2],'xTick',[-2:1:2]);
axis equal;
xlabel('x');
ylabel('y');

x_new=x(50);
y_new=y(50);
plot(x_new,y_new,'*');
text(x_new,y_new,'\leftarrow A');
slope=-tan(t(50));
intercept=y_new-slope*x_new;

x_line=linspace(0,-intercept/slope,100);
y_line=slope*x_line+intercept;
plot(x_line,y_line);

text(0.6,0.6,'x=cos^3(t)');
text(0.6,0.5,'y=sin^3(t)');
text(0.6,0.4,'0\leq t \leq 2\pi');

x_diff=zeros(length(t)-1,1);
y_diff=zeros(length(t)-1,1);
for i=2:length(t)
    x_diff(i-1)=x(i)-x(i-1);
    y_diff(i-1)=y(i)-y(i-1);
end

astroid_length_1 = sum((x_diff.^2+y_diff.^2).^(1/2));
astroid_length_1

f=@(t)sqrt((3*(cos(t)).^2.*sin(t)).^2+(3*sin(t).^2.*cos(t)).^2);
astroid_length_2=integral(f,0,2*pi);
astroid_length_2