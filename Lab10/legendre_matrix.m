function y=legendre_matrix(x,n)
y=zeros(2000,n+1);
for i=0:n
    y(:,i+1)=legendreP(i,x');
end