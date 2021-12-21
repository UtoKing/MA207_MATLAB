function y=task1_b_func(x,s)
if s==1
   y=(12*x+sin(x)-1).^(1/3);
elseif s==2
   y=1/12*(x.^3-sin(x)+1);
end 