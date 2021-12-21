N=2.^(1:6);
int=zeros(6,1);
for i=1:6
    int(i)=Gauss_legendre(N(i));
end
accurate_ans=integral(@(x) 1./(1+sin(x).^2),0,pi);
semilogy(log2(N),abs(int-accurate_ans))