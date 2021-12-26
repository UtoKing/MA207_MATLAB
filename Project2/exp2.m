lb=zeros(11,1);
ub=100*ones(11,1);
ub(5)=40;
ub(6)=30;
A0=5*ones(11,1);

[x,fval]=fmincon(@(x) -exp2func1(x),A0,[],[],[],[],lb,ub,@(x) exp2func2(x));

disp(x)
disp(fval)