
%convert from slope-intercept line form to standrad line form

%slope-intercept form: 
% y = mx + d, 
% where m is the slope and d is the y intercept.

%standard form:
%ax + by + c =0
%where a and b are the x andy coeffieicnts and c is the constant.
%--------------

close all;
clear all;

%Define axes
x = linspace(-10,10,100);
%Define a point that the line goes through
r = [1 2];
%Define an angle between the line and an imaginary horizontal line
theta = 0.2;
%--------------

%slope-intercept form: y=slope*x+intercept
slope = tan(theta);
intercept = r(2)-slope*r(1);
y1 = slope*x+intercept;
% visulaise it
figure;
plot(x,y1,'b','LineWidth',1.5)
xlabel('$x$','interpreter','latex')
ylabel('$y$','interpreter','latex')
set(gca,'TickLabelInterpreter','latex')
hold on
%--------------

% convert the decimal slope intp its fraction for using format rational
[num1, den1] = rat(slope);
% convert the intercept slope intp its fraction for using format rational
[num2, den2] = rat(intercept);
%define the slope using the slope fraction numerator and denominator
m = num1/den1;
%define the intercept using the intercept fraction numerator and denominator
d = num2/den2; %or dem1
% y = mx+ d
y2 = m*x+d;
%visulaise it
% plot(x,y2,'rx')
% hold on
%--------------

%convert from slope-intercept form to standard form: ax+bt+c=0
a =   num1*den2;
b = -(den1*den2);
c =   num2*den1;
% ax+by+c=0 -> y = (-ax-c)/b
y3 = -(a*x+c)/b;
%visulaise it
plot(x,y3,'gx')
legend('$y=mx+d$','$y=\frac{-ax-c}{b}$','Interpreter','latex')
%--------------