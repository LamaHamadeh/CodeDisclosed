
%Code Disclosed | 
%This code calculates dot product of two vectors A and B and calculates the
%angle between them.
%--------------

clear all;
close all;
clc

%acute angle (positive dot product)
A_ac = [5, 5, 4];
B_ac = [6, 5, 3];

%Using definition
%----------------
%calculate the dot product
Dot_ac1       = A_ac(1)*B_ac(1)+A_ac(2)*B_ac(2)+A_ac(3)*B_ac(3);
%calculate the norm of A_ac vector
A_ac_norm1    = sqrt(A_ac(1)^2+A_ac(2)^2+A_ac(3)^2);
%calculate the norm of B_ac vector
B_ac_norm1    = sqrt(B_ac(1)^2+B_ac(2)^2+B_ac(3)^2);
% Calculate the angle between A_ac and B_ac
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
% Calculate the angle between A_ac and B_ac
theta_ac2     = acos((Dot_ac2)/(A_ac_norm2*B_ac_norm2)); %in radians
theta_ac2_deg = rad2deg(theta_ac2); %in degrees
%--------------------------------------------------------------------------

%Obtuse angle (negative dot product)
A_ob = [5 2 1];
B_ob = [-3 2 4];

%Using definition
%----------------
%calculate the dot product
Dot_ob1       = A_ob(1)*B_ob(1)+A_ob(2)*B_ob(2)+A_ob(3)*B_ob(3);
%calculate the norm of A_ob vector
A_ob_norm1    = sqrt(A_ob(1)^2+A_ob(2)^2+A_ob(3)^2);
%calculate the norm of B_ob vector
B_ob_norm1    = sqrt(B_ob(1)^2+B_ob(2)^2+B_ob(3)^2);
% Calculate the angle between A_ob and B_ob
theta_ob1     = acos((Dot_ob1)/(A_ob_norm1*B_ob_norm1)); %in radians
theta_ob1_deg = rad2deg(theta_ob1); %in degrees

%Using MATLAB commands
%---------------------
%calculate the dot product
Dot_ob2       = dot(A_ob,B_ob);
%calculate the norm of A_ob vector
A_ob_norm2    = norm(A_ob);
%calculate the norm of B_ob vector
B_ob_norm2    = norm(B_ob);
% Calculate the angle between A_ob and B_ob
theta_ob2     = acos((Dot_ob2)/(A_ob_norm2*B_ob_norm2)); %in radians
theta_ob2_deg = rad2deg(theta_ob2); %in degrees
%--------------------------------------------------------------------------

%right angle (dot product is zero)
A_r = [2, 1, -3];
B_r = [4, 1, 3 ];

%Using definition
%----------------
%calculate the dot product
Dot_r1       = A_r(1)*B_r(1)+A_r(2)*B_r(2)+A_r(3)*B_r(3);
%calculate the norm of A_r vector
A_r_norm1    = sqrt(A_r(1)^2+A_r(2)^2+A_r(3)^2);
%calculate the norm of B_r vector
B_r_norm1    = sqrt(B_r(1)^2+B_r(2)^2+B_r(3)^2);
% Calculate the angle between A_r and B_r
theta_r1     = acos((Dot_r1)/(A_r_norm1*B_r_norm1)); %in radians
theta_r1_deg = rad2deg(theta_r1); %in degrees

%Using MATLAB commands
%---------------------
%calculate the dot product
Dot_r2       = dot(A_r,B_r);
%calculate the norm of A_r vector
A_r_norm2    = norm(A_r);
%calculate the norm of B_r vector
B_r_norm2    = norm(B_r);
% Calculate the angle between A_r and B_r
theta_r2     = acos((Dot_r2)/(A_r_norm2*B_r_norm2)); %in radians
theta_r2_deg = rad2deg(theta_r2); %in degrees
%--------------------------------------------------------------------------
