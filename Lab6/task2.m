clear

change_success=0;
not_change_success=0;

for i=1:1e5
    car_index=ceil(3*rand);
    choice_index=ceil(3*rand);
    %在选择不变的情况下
    if car_index==choice_index
        not_change_success=not_change_success+1;
    end
    %在改变自己的选择的情况下
    if car_index~=choice_index
        change_success=change_success+1;
    end
end

p1=change_success/1e5;
p2=not_change_success/1e5;
p1,p2
