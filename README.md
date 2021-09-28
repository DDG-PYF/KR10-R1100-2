# KR10-R1100-2
  一个关于KR10 R1100-2型号的机器手臂运动学与动力学的学习，主要用matlab实现
计算KR10 R1100-2运动学方程。
一、建立机械臂的DH模型：
![image](https://github.com/DDG-PYF/KR10-R1100-2/blob/main/img_file/1632826619(1).png)
二、推导一般的两关节轴坐标变换矩阵
![image](https://github.com/DDG-PYF/KR10-R1100-2/blob/main/img_file/1632826794(1).jpg)
由坐标系的变换可以得到，由坐标系i-1到坐标系i是经过了四步：
1、i-1绕Xi-1轴旋转 角度；
2、i-1沿Xi-1方向移动 距离；
3、绕Zi-1轴旋转 角度；
4、沿Zi-1轴移动 距离；
所以，
![image](https://github.com/DDG-PYF/KR10-R1100-2/blob/main/img_file/1632827331(1).jpg) 
这里，
![image](https://github.com/DDG-PYF/KR10-R1100-2/blob/main/img_file/1632827364(1).jpg) 
计算可得：
![image](https://github.com/DDG-PYF/KR10-R1100-2/blob/main/img_file/1632827376(1).png) 
用matlab编辑transform函数。
三、计算KR10 R1100-2运动学方程
见KR10R1100_2.m
