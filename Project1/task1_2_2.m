clc,clear,close;

num=1e5;
count=0;
area=0;

theta=linspace(0,2*pi,1000);
x=cos(theta);
y=sin(theta);

plot(x,y)
set(gca,'XLim',[-1.5,1.5],'YLim',[-1.5,1.5])
hold on
axis equal

while(count<=1000)
    x1=2*rand(1,2)-1;
    x2=2*rand(1,2)-1;
    x3=2*rand(1,2)-1;
    if norm(x1)<=1 && norm(x2)<=1 && norm(x3)<=1
        area=abs(det([x1,1;x2,1;x3,1]))*0.5+area;
        count=count+1;
        fill([x1(1),x2(1),x3(1),x1(1)],[x1(2),x2(2),x3(2),x1(2)],'b')
        a=text(1,1,"Average of area: "+area/count+"");
        b=text(1,0.8,"Caculating pi: "+35*count/(48*area)+"");
        c=text(1,0.6,"Numer of experiments: "+count+"");
        pause(0.04)
        delete(a),delete(b),delete(c)
    end
end

while(count<=num)
    x1=2*rand(1,2)-1;
    x2=2*rand(1,2)-1;
    x3=2*rand(1,2)-1;
    if norm(x1)<=1 && norm(x2)<=1 && norm(x3)<=1
        area=abs(det([x1,1;x2,1;x3,1]))*0.5+area;
        count=count+1;
    end
end

vpa(area/count)