function f=task2(in,n)
f=0;
for i=1:n
    out=randn*28+320;
    if in > out
        f=f+out*1.3-(in-out);
    else
        f=f+in*1.3;
    end
end
f=f/n;