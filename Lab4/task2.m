close,clc,clear;

t=0:0.02:2*pi;
x=(cos(t)).^3;
y=(sin(t)).^3;

xlabel('x');
ylabel('y');

slope = -tan(t);
for i = 1:length(slope)/4
    
    k=slope(i);
    b=y(i)-k*x(i);
    x_0=-b/k;
    
    x_line=[0 x_0];
    y_line=[b 0];
    
    x_rod=[0 x_0/2];
    y_rod=[0 b/2];
    
    plot(x,y,'k');hold on;
    set(gca,'XAxisLocation','origin','YAxisLocation','origin','yTick',[-2:1:2],'xTick',[-2:1:2]);
    axis equal;
    plot(x_line,y_line,'b');
    plot(x_rod,y_rod,'r');
    pause(0.1);
    hold off
end
