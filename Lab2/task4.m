close;
clear;

x=-4*pi:0.01:4*pi;

n=100;

y=x;
for i=1:n
    y=y.*(1-x.^2/(i^2*pi^2));
end

plot(x,y);