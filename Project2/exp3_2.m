clc,clear,close

v=0.032;
opts = odeset('InitialStep',1e-3);
a=zeros(130,2);
k=1;
for i=0.01:0.01:1.3
[r,f,g]=exp3func2(i,1e3);
a(k,1)=mean(f(end-1000:end));
a(k,2)=mean(g(end-1000:end));
k=k+1;
end

plot(0.01:0.01:1.3,a)


