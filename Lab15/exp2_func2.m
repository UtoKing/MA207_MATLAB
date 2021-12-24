function [c,ceq]=exp2_func2(x,pr)
u=exp2_func1(x,pr);
pro=(1-u)/u;
c=0.5-pro;
ceq=[];
end