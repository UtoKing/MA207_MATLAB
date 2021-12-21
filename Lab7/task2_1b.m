%不动点法

close,clc,clear;
x=1;
while(abs(task2_1_func(x))>1e-5)
    x=exp(x)/(3*x);
end
vpa(x,10)
vpa(task2_1_func(x),10)