
%Code Disclosed | 04/11/2023
%This code converts from slope-intercept line form to standard line form

%slope-intercept form: 
% y = mx + d, 
% where m is the slope and d is the y-intercept.

%standard form:
%ax + by + c =0
%where a and b are the x and y coefficients and c is the constant.
%--------------

close all;
clear all;
clc

%Define x axis 
x = linspace(-10,10,100);
%--------------

%% Slope-Intercept Form

%Define two points that the line goes through
r1 = [1 2];
r2 = [-1 0];

%cacluate the slope
slope = (r2(2)-r1(2))/(r2(1)-r1(1));

%calculate the intercept
% y = mx + c -> c = y-mx
intercept = r1(2)-slope*r1(1);

%the stope-intercept line equation
y1 = slope*x+intercept;

% visualize it
figure;
plot(x,y1,'b','LineWidth',1.5)
xlabel('$x$','interpreter','latex')
ylabel('$y$','interpreter','latex')
set(gca,'TickLabelInterpreter','latex','FontSize',12)
hold on
%--------------

%% Standard Form

% convert the decimal slope into its fraction format
[n1, d1] = rat(slope); %n1 is the numerator and d1 is the denominator
% convert the intercept slope into its fraction format
[n2, d2] = rat(intercept); %n2 is the numerator and d2 is the denominator

%convert from slope-intercept form to standard form: ax+by+c=0
a =   n1*d2;
b = -(d1*d2);
c =   n2*d1;

% write down the stanrds equation form ax+by+c=0 -> y = (-ax-c)/b
y2 = -(a*x+c)/b;

%visulaise it
plot(x,y2,'gx')
legend('$y=mx+d$','$y=\frac{-ax-c}{b}$','Interpreter','latex')
%--------------

%% Error Calculation

%calculate the error between both forms
mean_err = mean(abs(y1-y2)) ; % mean absolute error 
MSE      = mean((y1-y2).^2) ; % Mean square error 
RMSE     = sqrt(mean((y1-y2).^2)) ; % Root mean square error 
%--------------
