clc,clear,clf,close

pr=binopdf(0:5,5,0.5);

X=linspace(0,10,100);
Y=linspace(0,1,10);
[X_1,Y_1]=meshgrid(X,Y);

Z=zeros(100,10);
for i=1:100
    for j=1:10
        Z(i,j)=exp2_func1([X(i),Y(j)],pr);
    end
end
mesh(X_1,Y_1,(1-Z)')
hold on
contour3(X_1,Y_1,(1-Z)',-10:2,'k')

[x,fval]=fmincon(@(x) -1*exp2_func1(x,pr),[5 0.5],[],[],[],[],[1 0.3],[10 1],@(x) exp2_func2(x,pr));