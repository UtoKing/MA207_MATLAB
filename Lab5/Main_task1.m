close,clear,clc;

cycle=(3:8)';
result=zeros(length(cycle),1);
for i=3:8
    result(i-2)=task1(11,10^i);
end
exact_ans=ones(length(cycle),1)*0.2;
err=abs(exact_ans-result);
plot(cycle,err)