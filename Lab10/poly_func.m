function y=poly_func(x,n,a)
y=0;
for i=0:n
    y=y+a(i+1)*x.^i;
end