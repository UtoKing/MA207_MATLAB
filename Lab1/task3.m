close;
clear;
clc;

for j =1:10e4
    k=j;
    a=[];
    while(k~=1)
        temp=CollatzConjecture(k);
        a(end+1)=temp;
        k=temp;
    end
    if j>=8
        a(end-2:end)
    end
end