clc,clear
N=1e5;
a=zeros(N,3);
count=0;
for k=1:N
    GAM=rand+1;
    rho=rand;
    p=rand;
    v=2*rand-1;
    ga=1/sqrt(1-v^2);
    h=1+(GAM/(GAM-1))*(p/rho);
    D=rho*ga;
    m=rho*h*ga^2*v;
    E=rho*h*ga^2-p;

    t=rand*2-1;
    D_tilde=D*(1+t*v);
    m_tilde=m*(1+t*v)+t*p;
    E_tilde=E+t*m;
    if E<=sqrt(D^2+m^2)
        count=count+1;
    end
end

disp(count)
