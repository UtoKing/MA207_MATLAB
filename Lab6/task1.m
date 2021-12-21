close,clear,clc

sum=0;
num=1e4;

x=linspace(0,exp(1),1000);
y1=log(x);
y2=x/exp(1);

plot(x,y1,"b-");
hold on 
set(gca,"xlim",[0,3],"ylim",[0,3])
plot(x,y2,"r-")
plot(x,ones(length(x)),"g--")
plot(ones(100)*exp(1),linspace(0,1,100),"g--")

for i = 1:num
    point_x=rand*exp(1);
    point_y=rand;
    if point_y>log(point_x) && point_y<(point_x/exp(1))
        sum=sum+1;
        plot(point_x,point_y,"c*")
    end
end

sum
area=sum/num*exp(1);
area_exact=(exp(1)-2)/2;
err=abs(area-area_exact);
area,err