
%Code Disclosed | 
%This code gives an example of how the line fitting method is implemented
%in MATLAB using a toy data points with the code that generates its best
%fit line. For this method, polyfit and polyval commands are essentail to
%use. 
%--------------

close all;
clear all;

%Least-Squares Fit Line
%-----------------------
%Step 1: Read data points
x1 = [0.0 0.5 1.1 1.7 2.1 2.5 2.9 3.3 3.7 4.2 4.9 5.3 6.0 6.7 7.0];
y1 = [1.1 1.6 2.4 3.8 4.3 4.7 4.8 5.5 6.1 6.3 7.1 7.1 8.2 6.9 5.3];

%Step 2: Visualise the data trend
figure;
plot(x1,y1,'ko','LineWidth',1.5)
xlabel('$x$','Interpreter','latex')
ylabel('$y$','Interpreter','latex')
set(gca,'TickLabelInterpreter','latex','FontSize',12)
hold on

%Step 3: Least-square best fit line: y-Ax+B
%ployfit: returns the optimised coeffieicnts A and B that minimise the root
%mean square error using the least square fit method
pcoeff1 = polyfit(x1,y1,1);

%polyval: Use the coeffieicnt computed earilier to evalute the line at each
%point in xp.
xp = 0:0.1:7;
yp = polyval(pcoeff1,xp);

%Step 4: plot the best fit line on the data figure
plot(xp,yp,'b','LineWidth',1.5)
legend('Original Data Points','Least Squared Best Fit Line: $f(x)=Ax+B$','Interpreter','latex')
%--------------

%Least-Squares Fit Curve
%-----------------------
%Step 1: Read data points
x2 = [0.0 1 1.8 2.6 3 3.1 3.3 4 4.7 4.9 5 5.8 6.5 6.5 6.8];
y2 = [1.1 1.6 2 2 1.3 2.3 3.7 3.1 3.3 4.5 5 5.3 4.8 6.1 8.1];

%Step 2: Visualise the data trend
figure;
plot(x2,y2,'ro','LineWidth',1.5)
xlabel('$x$','Interpreter','latex')
ylabel('$y$','Interpreter','latex')
set(gca,'TickLabelInterpreter','latex','FontSize',12)
hold on

%Step 3: Least-square best-fit line: y=Ax^2+Bx+C
%ployfit: returns the optimized coefficients A and B that minimize the root
%mean square error using the least square fit method
pcoeff2 = polyfit(x2,y2,2);

%polyval: Use the coeffieicnt computed earilier to evalute the line at each
%point in xp.
xp = 0:0.1:7;
yp = polyval(pcoeff2,xp);

%Step 4: plot the best-fit line on the data figure
plot(xp,yp,'b','LineWidth',1.5)
legend('Original Data Points','Least Squared Best Fit Curve: $f(x)=Ax^2+Bx+C$','Interpreter','latex')
%--------------
