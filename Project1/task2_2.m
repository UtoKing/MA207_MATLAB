clc,clear

count=0;
syms x

for i=1:1e3
rho=rand;
p=rand;
v=2*rand-1;
C=2/rand;
D=rho/sqrt(1-v^2);
m=(rho+C*p)*v/(1-v^2);
E=m/v-p;

equ=C*x+m^2/(E+x)+D*sqrt(1-m^2/(E+x)^2)==E+x;
a=solve(equ,x,"Real",true);
if length(a)==1
    if double(a)>0
        continue
    else
        count=count+1;
    end
else
    count=count+1;
end
end