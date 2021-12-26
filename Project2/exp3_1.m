clc,clear,close

step=0.01;
v=0.032;
f=0;
g=0.2;
r=0;
iteration=1e6;

fval=zeros(iteration,1);
gval=zeros(iteration,1);
rval=0:step:step*(iteration-1);


for i=1:iteration
    fval(i)=f;
    gval(i)=g;
    rval(i)=r;
    g_new=(-f-(f^2-g^2)*f)*step+g;
    f_new=(-v*g-(f^2-g^2)*g)*(r+step/2)^2*step+r^2*f;
    f_new=f_new/(r+step)^2;
    f=f_new;
    g=g_new;
    r=r+step;
end

plot(rval,fval)
hold on
plot(rval,gval)
legend('f','g')