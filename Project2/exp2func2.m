function [c,ceq]=exp2func2(x)
%第一年可用投资数、投资数、剩余投资数
a_invest_1=100;
invest_1=x(1)+x(7);
left_1=a_invest_1-invest_1;

%第二年可用投资数、投资数、剩余投资数
a_invest_2=x(7)*1.06+left_1;
invest_2=x(2)+x(6)+x(8);
left_2=a_invest_2-invest_2;

%第三年可用投资数、投资数、剩余投资数
a_invest_3=x(1)*1.15+x(8)*1.06+left_2;
invest_3=x(3)+x(5)+x(9);
left_3=a_invest_3-invest_3;

%第四年可用投资数、投资数、剩余投资数
a_invest_4=x(2)*1.15+x(9)*1.06+left_3;
invest_4=x(4)+x(10);
left_4=a_invest_4-invest_4;

%第五年可用投资数、投资数、剩余投资数
a_invest_5=x(3)*1.15+x(10)*1.06+left_4;
invest_5=x(11);
left_5=a_invest_5-invest_5;

%总利息
c=[-left_1,-left_2,-left_3,-left_4,-left_5];
ceq=[];
end