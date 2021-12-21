close,clc,clear;

in=200:400;
out=zeros(length(in),1);
for i=in
    out(i-199)=task2(i,1e5);
end
plot(in,out)
[~,index]=max(out);
index+199