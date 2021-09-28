clc;
clear;
theta1=0;
theta2=0;
theta3=0;
theta4=0;
theta5=0;
theta6=0;
T10=transform(theta1,0,0,0);
T21=transform(theta2,0,25,-pi/2);
T32=transform(theta3,0,560,0);
T43=transform(theta4,515,25,-pi/2);
T54=transform(theta5,0,0,pi/2);
T65=transform(theta6,0,0,-pi/2);
T=T10*T21*T32*T43*T54*T65
%%用工具箱计算
L(1)=Link([0 0 0 0 0],'modified');
L(2)=Link([-pi/2 0 25 -pi/2 0],'modified');
L(3)=Link([0 0 560 0 0],'modified');
L(4)=Link([0 515 25 -pi/2 0],'modified');
L(5)=Link([0 0 0 pi/2 0],'modified');
L(6)=Link([0 0 0 -pi/2 0],'modified');
RobotKUKA=SerialLink(L,'name','R1100-2')
qz=RobotKUKA.fkine([theta1 theta2 theta3 theta4 theta5 theta6])
teach(RobotKUKA)