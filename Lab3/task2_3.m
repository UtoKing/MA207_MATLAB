close,clc,clear;

t=linspace(0,8*pi,1000);
x_t=t.*sin(t);
y_t=t.*cos(t);
z_t=t;

M=moviein(1000);

for k=1:length(t)
    plot3(x_t(1:k),y_t(1:k),z_t(1:k),'b-','linewidth',1);
    hold on
    axis([-30,30,-30,30,0,30]);
    xlabel('x');
    ylabel('y');
    zlabel('z');
    title('Using movie function');
    pause(1/1000),
    M(k)=getframe(gcf);
end

movie(M);
printgif('task2_3.gif',M,0.001);
