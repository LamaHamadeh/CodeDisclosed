%Code Disclosed | 
%This code calculates Taylor Series of the function sqrt(x) and shows that 
% the higher we go with the Taylor Series order, the closer we get to the
% actual exact function, and hence improves its approximation to the
% fucntion.
%--------------

clear all;
close all;


%define the spatial variable/coordinates
x = -2: 0.01: 10;   
%define the exact function we want to approxinate
y=sqrt(x); 
% y = x.^2;

%--------------

%calulcate the first four terms of Taylor series around x0=4
ts1=2*ones(size(x));                                 %1 term TS
ts2=2+1/4.*(x-4);                                    %2 terms TS
ts3=2+1/4.*(x-4)-1/64.*(x-4).^2;                     %3 terms TS
ts4=2+1/4.*(x-4)-1/64.*(x-4).^2+1/512.*(x-4).^3;     %4 terms TS

%--------------
%visualise the comparison between the exact function the calculated Taylor
%series terms
figure ;
%plot the exact function
plot(x,y,'b','LineWidth',1.5)
hold on
%plot Taylor series terms
plot (x,ts1,'k--',x,ts2,'r--',x,ts3,'m--',x,ts4,'c--','LineWidth',1)
xlabel('$x$','interpreter','latex')
ylabel('$y = f(x)$','interpreter','latex')
legend('$f(x)$', 'Taylor Series: 1 term', 'Taylor Series: 2 terms'...
    , 'Taylor Series: 3 terms', 'Taylor Series: 4 terms',...
    'location','northwest','interpreter','latex')
set(gca,'TickLabelInterpreter','latex','FontSize',12)
%------------------------------------------------

%Another example
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
% transparent background
% set(gcf, 'color', 'none'); 
% set(gca, 'color', 'none'); 
% box off
% axis off
set(gca,'TickLabelInterpreter','latex','FontSize',12)
hold on

%--------------

%calulcate the first four terms of the Taylor series around x0=3
TS1 = -57*ones(1,size(fx,2)); %1 term TS
TS2 = -33*(x-3); %2 term TS
TS3 = -(x-3).^2; %3 term TS
TS4 = (x-3).^3; %4 term TS
Approx = TS1+TS2+TS3+TS4; %The approximate function calculated using TS
%--------------

% Visualise the comparison between the exact function of the calculated Taylor
%series terms
plot(x,TS1,'r--','LineWidth',1)
plot(x,TS1+TS2,'g--','LineWidth',1)
plot(x,TS1+TS2+TS3,'y--','LineWidth',1)
plot(x,Approx,'m--','LineWidth',1)
xlabel('$x$','interpreter','latex')
ylabel('$y=f(x)$','interpreter','latex')
legend('$f(x)$', 'Taylor Series: 1 term', 'Taylor Series: 2 terms'...
    , 'Taylor Series: 3 terms', 'Taylor Series: 4 terms',...
    'location','southeast','interpreter','latex')
set(gca,'TickLabelInterpreter','latex','FontSize',12)
%--------------
