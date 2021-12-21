close,clc,clear;

a1=1.4;
a2=2.4;
h=a2-a1;
while(h>1e-13)
    a3=(a2+a1)/2;
    if(task2_2_func(a3)>0)
        a2=a3;
    elseif(task2_2_func(a3)<0)
        a1=a3;
    end
    h=h/2;
end

a3=(a1+a2)/2;

vpa(a3,10)
vpa(task2_2_func(a3),15)