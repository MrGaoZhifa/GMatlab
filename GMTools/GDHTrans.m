function [T] = GDHTrans(alph,a,d,theta,offset)
%%-------------------------------------%%
% Author: Z.F.G
% Time:2023/4/25
% Email:gaozf@gmail.com
% Function: 通过 DH 的四个参数求变换矩阵
%%-------------------------------------%%

Rx = [1 0          0           0;
      0 cos(alph)  -sin(alph)  0;
      0 sin(alph)  cos(alph)   0;
      0 0          0           1;
    ];
Dx = [1 0 0 a;
      0 1 0 0;
      0 0 1 0;
      0 0 0 1;
    ];
Rz = [cos(theta+offset)  -sin(theta+offset) 0  0;
      sin(theta+offset)  cos(theta+offset)  0  0;
      0           0           0  0;
      0           0           0  1;
    ];
Dz = [1 0 0 0;
      0 1 0 0;
      0 0 1 d;
      0 0 0 1;
    ];
T = Rx*Dx*Rz*Dz;
end

