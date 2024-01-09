
%Code Disclosed | 
%This code calculates dot product of two vectors A and B and calculates the
%angle between them.
%--------------

clear all;
close all;
clc

%actue angle (positive dot product)
A_ac = [5,5,4];
B_ac = [6,5,3];

%Using definition
%----------------
%calculate the dot product
Dot_ac1       = A_ac(1)*B_ac(1)+A_ac(2)*B_ac(2)+A_ac(3)*B_ac(3);
%calculate the norm of A_ac vector
A_ac_norm1    = sqrt(A_ac(1)^2+A_ac(2)^2+A_ac(3)^2);
%calculate the norm of B_ac vector
B_ac_norm1    = sqrt(B_ac(1)^2+B_ac(2)^2+B_ac(3)^2);
%calculate the angle between A_ac and B_ac
theta_ac1     = acos((Dot_ac1)/(A_ac_norm1*B_ac_norm1)); %in radians
theta_ac1_deg = rad2deg(theta_ac1); %in degrees

%Using MATLAB commands
%---------------------
%calculate the dot product
Dot_ac2       = dot(A_ac,B_ac);
%calculate the norm of A_ac vector
A_ac_norm2    = norm(A_ac);
%calculate the norm of B_ac vector
B_ac_norm2    = norm(B_ac);
%calculate the angle between A_ac and B_ac
theta_ac2     = acos((Dot_ac2)/(A_ac_norm2*B_ac_norm2)); %in radians
theta_ac2_deg = rad2deg(theta_ac2); %in degrees
%--------------------------------------------------------------------------

% %abtuse angle (negative dot product)
% A_ab = [];
% B_ab = [];

%--------------

% %right angle (dot product is zero)
% A_r = [];
% B_r = [];

%------------------------------------