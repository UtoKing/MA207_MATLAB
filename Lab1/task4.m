close;
clear;
clc;

tic
for j =1:10e4
    k=j;
    a=factor(k);
    b=a>2;
    k=sum(b.*a);
    if k~=0
        while(k~=1)
            k=CollatzConjecture(k);
        end
    end
end

fprintf('done\n')
toc