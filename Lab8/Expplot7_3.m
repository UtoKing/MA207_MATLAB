%Expplot7_3   画一次迭代的蛛网图, 改变p可调节箭头的大小
function out =  Expplot7_3(x,y,p)
%   已知有向折线段的始点为(x(1),y(1)),终点为(x(2),y(2)),画出有向折线段
%   (x(1),y(2))――>(x(2),y(2))     
%              |
%              |
%    (x(1),y(1))                          
  u(1)=0; v(1)=(y(2)-y(1)); u(2)=eps;  v(2)=eps;
  h=quiver([x(1) x(1)],[y(1) y(2)],u,v,p);set(h,'color','red');
  hold on,
  u(1)=(x(2)-x(1)); v(1)=0;  u(2)=eps; v(2)=eps;
  h=quiver([x(1) x(2)],[y(2) y(2)],u,v,p); set(h,'color','red');
  plot([x(1) x(1) x(2)],[y(1) y(2) y(2)],'r.-')  