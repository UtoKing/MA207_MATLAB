clc,clear,close

v=0.032;
g_0=0.5;

[rval,fval,gval]=exp3func2(v,g_0,1e2);

plot(rval,fval)
hold on
plot(rval,gval)
legend('f','g')