clc,clear,close

v=0.032;

g_0=.01:.01:1.2;
g_infs=zeros(size(g_0));

for i=1:length(g_0)
    [~,~,gval]=exp3func2(v,g_0(i),1e3);
    g_inf=mean(gval(end-100:end));
    g_infs(i)=g_inf;
end

plot(g_0,g_infs)