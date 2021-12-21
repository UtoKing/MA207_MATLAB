close;
clear;
clc;

load('HW2Exp3data.mat');
data=table2array(HW2Exp3data);
plot(data(:,1),data(:,2));

X=data(:,1);
y=data(:,2);
grad=gradient(y,X);
point=[];
for i=1:59
    if grad(i)*grad(i+1)<0
        pt=0.2*(i-1);
        point(end+1)=pt;
    end
end
point
