function y=poly_matrix(x,n)
y=zeros(2000,n+1);
y(:,1)=ones(2000,1);
for i=1:n
    y(:,i+1)=x'.^i;
end