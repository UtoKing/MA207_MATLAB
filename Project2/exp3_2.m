clc,clear,close

v=0.032;
opts = odeset('InitialStep',1e-3);
a=zeros(100,2);
k=1;
for i=0.01:0.01:1
[r,f]=ode45(@(r,y) exp3func(r,y,v),[1e-8 10000],[0 i],opts);
a(k,:)=mean(f(end-100:end,:),1);
k=k+1;
end

plot(0.01:0.01:1,a)


