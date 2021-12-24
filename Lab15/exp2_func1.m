function y=exp2_func1(args,pr)
s=args(1);
r=args(2);
f=[s,s*r,s*r.^2,s*r.^2,s*r,s];
y=f*pr';
end