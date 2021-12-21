close,clc,clear;

x=sym("x");
y=prod(x*ones(1,20)-(1:20));



for i = 0:15
    sym_exp=y+10^(-i)*x^19;
    a=vpa(solve(sym_exp==0,x));
    plot(i*ones(length(a),1),a,'b.')
    hold on
end

