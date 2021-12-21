clc,clear

count=0;

for i=1:1e5
rho=rand;
p=rand;
v=2*rand-1;
C=2/rand;
D=rho/sqrt(1-v^2);
m=(rho+C*p)*v/(1-v^2);
E=m/v-p;

func=@(x) C*x+m^2/(E+x)+D*sqrt(1-m^2/(E+x)^2)-(E+x);
if abs(func(p)-0)<1e15
    count=count+1;
end
end