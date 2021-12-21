close,clc,clear;

t=linspace(0,8*pi,100);
x_t=t.*sin(t);
y_t=t.*cos(t);
z_t=t;
for k=1:length(t)
    plot3(x_t(1:k),y_t(1:k),z_t(1:k),'b-');
     axis([-30,30,-30,30,0,30]);
     xlabel('x');
     ylabel('y');
     zlabel('z');
     title('Using for loop');
%     frame(k)=getframe(gcf);
    pause(0.001);
end

% printgif('task2_1_gif.gif',frame,0.001);
    