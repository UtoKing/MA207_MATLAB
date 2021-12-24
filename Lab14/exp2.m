clc,clear,close,clf
[~,x1]=ode45(@expfunc2,[0,20],[10;-10;-10]);
disp(x1(end,:))
figure(1)
plot3(x1(:,1),x1(:,2),x1(:,3))

[~,x2]=ode45(@expfunc2,[0,20],[10.001;-10;-10]);
disp(x2(end,:))
figure(2)
plot3(x2(:,1),x2(:,2),x2(:,3))

[~,x3]=ode45(@expfunc2,[0,20],[-10;-10;-10]);
disp(x3(end,:))
figure(3)
plot3(x3(:,1),x3(:,2),x3(:,3))

x=zeros(20,3);
for i=1:20
    [~,x_temp]=ode45(@expfunc2,[0,20],[10+0.001*i;-10;-10]);
    x(i,:)=x_temp(end,:);
end
figure(4)
plot3(x(:,1),x(:,2),x(:,3))
