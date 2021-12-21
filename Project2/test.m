clc,clear

[A,x]=Gauss(5);
m=zeros(5,5);
for i=0:4
    temp_matrix=legendre(i,x,'norm');
    m(:,i+1)=temp_matrix(1,:);
end

m*m'*diag(A)