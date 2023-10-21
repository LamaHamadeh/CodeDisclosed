
%Code Disclosed | 17/10/2023
%This code constructs a regular polygon, calculates the lengths of its sides,
% the sum of its interior angles, and the value of each interior angle.

close all;
clear all;

% Number Of Sides
NVert = 7; 
%-------------------

%Calculate the vertices coordinates
%Define the polar coordinates
theta = linspace(0, 2*pi, NVert+1); % Angle Vector
r = 1; % Radius Vector
phi = pi/2; % Phase (Rotates Figure)

%transfer from polar to Cartesian coordinates
sx = r*cos(theta + phi); %x coordinates
sy = r*sin(theta + phi); %y coordinates
%-------------------

% visualize the polygon
figure;
plot(sx, sy, 'b', 'LineWidth',1.5)
xlabel('$x$ Coordinates','interpreter','latex')
ylabel('$y$ Coordinates','interpreter','latex')
axis equal
grid on
set(gca,'TickLabelInterpreter','latex','FontSize',12)
%-------------------

%Calculate the length of each side of the polygon
for iedge = 2:length(sx)
    L(iedge-1) = sqrt((sx(iedge-1)-sx(iedge))^2+(sy(iedge-1)-sy(iedge))^2);
end

%-------------------

%sum of external angles
SumExtAngl = 360;
%The value of each external angle: All exterior angles in a regular 
% polygon are equal.
ExtAngle = SumExtAngl/NVert;

%sum of interior angles
SumIntAngl = (NVert-2)*180;
%The value of each interior angle: All the interior angles in a regular 
% polygon are equal.
IntAngle = SumIntAngl/NVert;
%-------------------

