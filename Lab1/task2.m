close;
clear;
clc;

tic
for j =1:10e4
    k=j;
    while(k~=1)
        k=CollatzConjecture(k);
    end
end

fprintf('done\n')
toc