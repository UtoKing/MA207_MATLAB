t=[0.5 1 2 3 4 5 7 9];
u=[6.36 6.48 7.26 8.22 8.66 8.99 9.43 9.63];
% plot(log(10-u),t,'.')
fun=@(k,x) k(1)+k(2)*x;
k = lsqcurvefit(fun,[0,0],t,log(10-u));
V0=10-exp(k(1));
tau=-1/k(2);
fun_2=@(x) 10-(10-V0)*exp(-x/tau);
fplot(fun_2)
hold on
plot(t,u,'.')

disp(V0+" "+tau)