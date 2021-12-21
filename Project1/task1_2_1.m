clc,clear,close;

num=1e5;
count=0;
area=0;

while(count<=num)
    x1=2*rand(2,1)-1;
    x2=2*rand(2,1)-1;
    x3=2*rand(2,1)-1;
    if x1'*x1<=1 && x2'*x2<=1 && x3'*x3<=1
        count=count+1;
        AB=x2-x1;
        AC=x3-x1;
        cos_BAC=AB'*AC/(norm(AB)*norm(AC));
        sin_BAC=sqrt(1-cos_BAC^2);
        area=norm(AB)*norm(AC)*sin_BAC*0.5+area;
    end
end

area/count