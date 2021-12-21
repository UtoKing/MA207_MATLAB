%牛顿迭代法

close,clear,clc;
x=1;
for i=1:5
    x=x-task2_1_func(x)/(6*x-exp(x));
end

vpa(x,10)
vpa(task2_1_func(x),10)