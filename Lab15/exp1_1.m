clc,clear,clf

p=0.6;

figure(1)

y_1=binopdf(0:200,200,p);
plot(0:200,y_1)

hold on

y_2=normpdf(0:200,200*p,sqrt(200*p*(1-p)));
plot(0:200,y_2)

hold off

%-----------------------------------------

figure(2)

y=binocdf(0:200,200,p);

plot(0:200,y);
find(y>=0.999)