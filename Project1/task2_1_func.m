function [C,D,m,E]=task2_1_func()
rho=rand;
p=rand;
v=2*rand-1;
C=2/rand;
D=rho/sqrt(1-v^2);
m=(rho+C*p)*v/(1-v^2);
E=m/v-p;
end

