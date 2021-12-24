clc,clear,clf,close

pr=binopdf(0:5,5,0.5);

fun=@(x) exp2_func(x,pr);

X=linspace(0,10,100);
Y=linspace(0,1,10);
[X_1,Y_1]=meshgrid(X,Y);

Z=zeros(100,10);
for i=1:100
    for j=1:10
        Z(i,j)=fun([X(i),Y(j)]);
    end
end
mesh(X_1,Y_1,(1-Z)')
hold on
contour3(X_1,Y_1,(1-Z)',-10:2,'k')

[x,fval]=fmincon(@(x) exp2_func(x,pr),[0 0],[],[],[],[],[0 0],[10 1]);