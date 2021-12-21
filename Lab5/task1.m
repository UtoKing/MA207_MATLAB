function p=task1(n,m)
con=0;
for i=1:m
    zhang3=randi(n);
    li4=randi(n);
    while li4==zhang3
        li4=randi(n);
    end
    if zhang3==1 && li4==n
        con=con+1;
    elseif zhang3==n && li4 ==1
        con = con+1;
    elseif abs(zhang3-li4)==1
        con = con+1;
    end
end
p=con/m;