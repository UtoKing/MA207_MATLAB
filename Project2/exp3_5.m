clc,clear,close

v=0.7;
a=zeros(130,2);
k=1;
lb=1;
ub=1.1;
iteration=0;


while true
    mid=(lb+ub)/2;
    [~,~,gval]=exp3func2(v,mid,40);
    k=mean(gval(end-100:end));
    if abs(k)<1e-3 || iteration>1e4
        break
    elseif k>0
        lb=mid;
    else
        ub=mid;
    end
    iteration=iteration+1;
end
g_0=mid;

[rval,fval,gval]=exp3func2(v,g_0,40);

plot(rval,fval)
hold on
plot(rval,gval)
legend('f','g')