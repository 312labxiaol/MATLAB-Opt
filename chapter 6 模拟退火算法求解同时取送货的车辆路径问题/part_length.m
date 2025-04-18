%% 计算一条配送路线的路径长度
%输入route：       一条配送路线
%输入dist：        距离矩阵
%输出p_l：         当前配送路线长度
function p_l= part_length(route,dist)
n=length(route);
p_l=0;
if n~=0
    for i=1:n
        if i==1
            p_l=p_l+dist(1,route(i)+1);
        else
            p_l=p_l+dist(route(i-1)+1,route(i)+1);
        end
    end
    p_l=p_l+dist(route(end)+1,1);
end
end