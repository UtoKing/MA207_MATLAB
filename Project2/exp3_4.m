clc,clear,close

v=0.032;
a=zeros(130,2);
k=1;
lb=0;
ub=1;
iteration=0;


while true
    mid=(lb+ub)/2;
    [~,~,gval]=exp3func2(v,mid,1e2);
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
g_0=(lb+ub)/2;