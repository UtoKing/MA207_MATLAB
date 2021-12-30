clc,clear

%------------------------------------------
% Exp 1.2

n=10;
f=@(x) exp(x);
[A,x]=Gauss(n+1);
legendre_matrix=zeros(n+1,n+1);
for i=0:n
    value=legendre(i,x,'norm');
    legendre_matrix(:,i+1)=value(1,:)';
end
H=legendre_matrix'*legendre_matrix;
f_value=-f(x)'*legendre_matrix;
c=quadprog(H,f_value);

disp(sum(f(x).*A.*legendre_matrix,1)'-c)

%------------------------------------------
% Exp 1.3

c_iter=rand(n+1,1)*2-1;
e=zeros(n+1,1);

for i=1:n+1
    c_iter=c_iter+(f(x(i))-legendre_matrix(i,:)*c_iter)...
        /norm(legendre_matrix(i,:))^2*legendre_matrix(i,:)';
    e(i)=norm(c-c_iter)^2;
end

plot(e)

