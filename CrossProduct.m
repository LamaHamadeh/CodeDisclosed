
%Code Disclosed | 
%This code calculates the cross product of two vectors and its magnitude 
%--------------

clear all;
close all;

% %define two vectors (with an acute angle between them)
% A = [5, 5, 4];
% B = [6, 5, 3];

% %define two vectors (with a right angle between them)
% A = [2, 1, -3];
% B = [4, 1,  3];

% %define two vectors (with 0 angle between them, i.e., parallel vectors)
% A = [3 2 9];
% B = [1 2/3 3];

% %calculate the cross product between these two vectros
% A = [5   3  7];
% B = [-5 -3 -7];

%calculate the angle between both vectors using the dot product
%calculate the dot product
Dot       = dot(A,B);
%calculate the norm of A_ob vector
A_norm    = norm(A);
%calculate the norm of B_ob vector
B_norm    = norm(B);
% Calculate the angle between A_ob and B_ob
theta     = acos((Dot)/(A_norm*B_norm)); %in radians
theta_deg = rad2deg(theta); %in degrees
%----------------

%caluclate the cross product, i.e., find out the vectro that is
%perpendicular to both A and B
C     = cross(A,B);
%calculate the magnitude of the cross product
mag_C = norm(A)*norm(B)*abs(sin(theta));

%----------------

%prove that the vector resulting from the dot product is acutally
%perpendicular to both A and B
% Calculate the angle between C and A
theta_AC     = acos((dot(A,C))/(norm(A)*norm(C))); %in radians
theta_AC_deg = rad2deg(theta_AC); %in degrees
% Calculate the angle between C and B
theta_BC     = acos((dot(B,C))/(norm(B)*norm(C))); %in radians
theta_BC_deg = rad2deg(theta_BC); %in degrees
%------------------------------------

