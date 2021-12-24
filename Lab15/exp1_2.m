clc,clear,clf

p=0.6;

figure(1)
y=normcdf(0:200,200*p,sqrt(200*p*(1-p)));
plot(0:200,y)
find(y>=0.999)

%-----------------------------------------

y_1=binocdf(0:10,10,p);
find(y_1>=0.999)
y_2=normcdf(0:10,10*p,sqrt(10*p*(1-p)));
find(y_2>=0.999)

figure(2)
plot(0:10,y_1)

figure(3)
plot(0:10,y_2)