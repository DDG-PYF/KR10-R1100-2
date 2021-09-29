%%两相邻关节点坐标平移矩阵
function [D]=move(d,a,alpha)
r14=a;
r24=-sin(alpha)*d;
r34=cos(alpha)*d;
D=[r14;r24;r34];
end