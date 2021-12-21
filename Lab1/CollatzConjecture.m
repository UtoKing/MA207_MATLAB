function y=CollatzConjecture(n)
if mod(n,2) == 1
    y=3*n+1;
else
    y=n/2;
end