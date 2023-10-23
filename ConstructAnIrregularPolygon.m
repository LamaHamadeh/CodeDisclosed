
%Code Disclosed | 28/10/2023
%This code constructs an irregular convex polygon, calculates the lengths of 
% its sides, the sum of its interior angles, and the value of 
% each interior angle.

close all;
clear all;

%define the coordinates of each vertex of the irregular polygon
% sx = [-0.9 1  0 -0.6 -0.9]; %x coordinates
% sy = [-1  -1  1  1   -1  ]; %y coordinates

sx = [-1  1  1 -1 ]; %x coordinates
sy = [-1 -1  1  -1]; %y coordinates

%define the number of sides/vertices
NVert = length(sx)-1;
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

%calculate exterior angles using dot product between each of two vectors that
%correpond to each two consecutive sides
%Calculate the side vectors of each edge
for i = 2:length(sx)
    Vx(i-1) = sx(i-1) - sx(i);
    Vy(i-1) = sy(i-1) - sy(i);
end

% Calculate all exterior angles between two vectors/sides using the dot product
for j = 1:length(Vx)
    jp = j+1; %next edge
    if (jp > length(Vx))
        jp = jp - length(Vx);
    end
    ExAng(j) = acos((Vx(j) * Vx(jp) + Vy(j) * Vy(jp))...
        /(sqrt(Vx(j)^2+Vy(j)^2)*sqrt(Vx(jp)^2+Vy(jp)^2)));
end

%sum all resulting angles to confirm that the sum of all exterior angles in
%any irregular polygon equals to 360.
SumExAng = sum(ExAng)*(180/pi); %multiply with (180*pi) to convert the
% angles from radians to degrees
%-------------------

% Since the interior and exterior angles add up to 180°, then we can subtract
% pi(or 180) from each exterior angle
for theta = 1:length(ExAng)
    IntAng(theta) = pi - ExAng(theta);
end

% Calculate the sum of all interior angles from the loop above
SumIntAng_Cal = sum(IntAng)*(180/pi);

%calculate the sum of interior angles using the equation sum=(n-1)*180 to
%confirm our work
SumIntAng_Equ = (NVert-2)*180;
%-------------------


