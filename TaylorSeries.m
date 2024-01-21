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


