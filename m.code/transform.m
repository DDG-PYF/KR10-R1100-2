function [T]=transform(theta,d,a,alpha)
%syms theta3 a;
ctheta=cos(theta);
stheta=sin(theta);
calpha=cos(alpha);salpha=sin(alpha);
r11=ctheta;
r12=-stheta;
r14=a;
r21=stheta*calpha;
r22=ctheta*calpha;
r23=-salpha;
r24=-salpha*d;
r31=stheta*salpha;
r32=ctheta*salpha;
r33=calpha;
r34=calpha*d;
T=[r11 r12 0 r14;r21 r22 r23 r24;r31 r32 r33 r34;0 0 0 1];
end