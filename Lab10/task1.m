clear,clc,clf;
path(path,'./l1magic-1.11/l1magic/Optimization/')

x=linspace(-pi,pi,2000);
y=1+x+x.^2+x.^3;
corruption=ceil(rand(5,1)*2000);
y(corruption)=y(corruption)*50;

n=3;

axis equal

figure(1)
func1=@(a) poly_func(x,n,a)-y;
aa=lsqnonlin(func1,zeros(n+1,1));
fplot(@(x) poly_func(x,n,aa))
hold on
plot(x,y,'b.')
hold off

figure(2)
func2=@(a) legendre_func(x,n,a)-y;
bb=lsqnonlin(func2,zeros(n+1,1));
fplot(@(x) legendre_func(x,n,bb))
hold on
plot(x,y,'b.')
hold off

figure(3)
cc=l1decode_pd(zeros(n+1,1),poly_matrix(x,n),[],y',1e-4,30);
fplot(@(x) poly_func(x,n,cc))
hold on
plot(x,y,'b.')
hold off

figure(4)
dd=l1decode_pd(zeros(n+1,1),legendre_matrix(x,n),[],y',1e-4,30);
fplot(@(x) legendre_func(x,n,dd))
hold on
plot(x,y,'c.')
hold off
