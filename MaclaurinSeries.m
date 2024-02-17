%Code Disclosed | 
%This code calculates the Maclaurin Series of the function fx and shows that 
% The higher we go with the Maclaurin Series order, the closer we get to the
% actual exact function, and hence improves its approximation to the
% function.
%--------------

clear all;
close all;


%define the spatial variable/coordinates
x = linspace(-10,10,100);
%define the exact function we want to approximate
fx = x.^3-10*x.^2+6;
%--------------

%visulaise the exact function
figure;
plot(x,fx,'c','LineWidth',1)
xlabel('$x$','interpreter','latex')
ylabel('$y=f(x)$','interpreter','latex')
% % transparent background
% set(gcf, 'color', 'none'); 
% set(gca, 'color', 'none'); 
% box off
% axis off
set(gca,'TickLabelInterpreter','latex','FontSize',12)
hold on

%--------------

%calulcate the first four terms of Maclaurin series around x0=4
MS1 = 6*ones(1,size(fx,2)); %1 term TS
MS2 = 0*ones(1,size(fx,2)); %2 term TS
MS3 = -10*x.^2; %3 term TS
MS4 = x.^3; %4 term TS
Approx = MS1+MS2+MS3+MS4; %The approximate function calculated using TS
%--------------

% Visualise the comparison between the exact function the calculated Taylor
%series terms
plot(x,MS1,'r--','LineWidth',1)
plot(x,MS1+MS2,'g--','LineWidth',1)
plot(x,MS1+MS2+MS3,'y--','LineWidth',1)
plot(x,Approx,'m--','LineWidth',2)
xlabel('$x$','interpreter','latex')
ylabel('$y=f(x)$','interpreter','latex')
legend('$f(x)$', 'Maclaurin Series: 1 term', 'Maclaurin Series: 2 terms'...
    , 'Maclaurin Series: 3 terms', 'Maclaurin Series: 4 terms',...
    'location','southeast','interpreter','latex')
set(gca,'TickLabelInterpreter','latex','FontSize',12)
%--------------

%Using Matlab Built-in function
%create variable x
syms x
%define the function as a function of x
f = x^3-10*x^2+6;

%caluclate Maclaurin series up to the 5th order
MS = taylor(f,x); % approximates f with the Maclaurin series expansion of f up 
% to the fifth order at the point a = 0

%calculate Maclaurin series up to the 8th order
MSHigher = taylor(f,x,'Order',8); %Use Order to control the truncation order. 
% For example, approximate the same expression up to the order 8.

%calculate Taylor series up to the fifth order at the point a=3.
TS = taylor(f,x,3); % approximates f with the Taylor series expansion of f up 
% to the fifth order at the point a = 3

%--------------
