%%两相邻节点坐标的旋转矩阵
function [R]=rotate(theta,alpha)
ctheta=cos(theta);stheta=sin(theta);
calpha=cos(alpha);salpha=sin(alpha);
r11=ctheta;
r12=-stheta;
r21=stheta*calpha;
r22=ctheta*calpha;
r23=-salpha;
r31=stheta*salpha;
r32=ctheta*salpha;
r33=calpha;
R=[r11 r12 0;r21 r22 r23;r31 r32 r33];
end