close,clc,clear;


count=0;
larger_than_zero=0;
while(count<=1e5)
    a=rand(2,1);
    b=rand(2,1);
    if norm(a)<1 && norm(b)<1
        count=count+1;
        if task1_func(a(1),a(2),b(1),b(2))>0
            larger_than_zero=larger_than_zero+1;
        end
    end
end