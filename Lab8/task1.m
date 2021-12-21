[result,~]=Exp7_7(1e-6,100,3,4);
result(end)


function[y,k]=Exp7_7(er,n,xa,xb)
x0=xa;x1=xb;
ff=@(x) x.^3-sin(x)-12.*x+1;
y(1)=xa;y(2)=xb;
k=2;
while abs(x1-x0)>er&&k<n
    fx1=ff(x1);
    fx0=ff(x0);
    x2=x1-fx1*(x1-x0)/(fx1-fx0);
    k=k+1;
    y(k)=x2;
    x0=x1;
    x1=x2;
end
end