close,clear,clc;

a=10:100;
len=length(a);

prob=2./(a-1);
freq = zeros(1,len);
for k=10:100
    freq(k-9)=task1(k,1e5);
end

plot(freq,prob)