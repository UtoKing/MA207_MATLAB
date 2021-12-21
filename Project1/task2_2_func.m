function x=task2_2_func(D,m,E,C)
if (E^2-D^2-m^2)<=0 || C<2
    x=-1;
else
    syms t
    x=vpa(solve(C*t+m^2/(E+t)+D*sqrt(1-m^2/(E+t)^2)==E+t,t,'Real',true),10);
end