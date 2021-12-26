function dydr=exp3func(r,y,v)
dydr=zeros(2,1);
dydr(1)=-(2*y(1)/r+v*y(2)+(y(1)^2-y(2)^2)*y(2));
dydr(2)=-(y(1)+(y(1)^2-y(2)^2)*y(1));
end