%% 计算每辆车所行驶的距离，以及所有车行驶的总距离
%输入VC：          配送方案，即每辆车所经过的顾客
%输入dist：        距离矩阵
%输出sumTD：       所有车行驶的总距离
%输出everyTD：     每辆车所行驶的距离
function [sumTD,everyTD]=travel_distance(VC,dist)
n=size(VC,1);                        %车辆数
everyTD=zeros(n,1);
for i=1:n
    part_seq=VC{i};                  %每辆车所经过的顾客
    %如果车辆不经过顾客，则该车辆所行使的距离为0
    if ~isempty(part_seq)
        everyTD(i)=part_length( part_seq,dist );
    end
end
sumTD=sum(everyTD);                  %所有车行驶的总距离