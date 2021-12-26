clc,clear,close

v=0.032;
[r,f]=ode45(@(r,y) exp3func(r,y,v),[1e-8 100],[0 1.3]);
plot(r,f(:,1))
hold on
plot(r,f(:,2))