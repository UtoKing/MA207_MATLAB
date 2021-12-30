clc,clear,close

[rval,fval,gval]=exp3func2(0.032,0.6518128391,1e4);

plot(rval,fval)
hold on
plot(rval,gval)
legend('f','g')