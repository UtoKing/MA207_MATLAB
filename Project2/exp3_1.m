clc,clear,close

v=0.032;
g_0=0.6518128402531147003173828125;

[rval,fval,gval]=exp3func2(v,g_0,1e4);

plot(rval,fval)
hold on
plot(rval,gval)
legend('f','g')