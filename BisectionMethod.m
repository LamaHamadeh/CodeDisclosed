
%Code Disclosed | 11/04/2023
%This code implement the Bisection numerical method to find the root of a
%polynomial function.
%--------------

close all;
clear all;

%Define x vector
x = linspace(-10,10,100);
%--------------

%define the function
f = x.^3+1;
%--------------

% visulaise it
figure;
plot(x,f,'b','LineWidth',1.5)
xlabel('$x$','interpreter','latex')
ylabel('$y$','interpreter','latex')
title('$f = x^2-3$','interpreter','latex')
ylim([-10 10])
xlim([-3 3])
set(gca,'TickLabelInterpreter','latex','FontSize',12)
%--------------

%Implement Bisection Method
xr=2; % initial right boundary
xl=-3; % initial left boundary

for iter=1:1000 % j number of iterations
    xc=(xl+xr)/2; % calculate the midpoint
    fc=(xc^3)+1;% calculate function at the midpoint
    if fc>0
        xr=xc; % move the right boundary
    else
        xl=xc; % move the left boundary
    end
    if abs(fc)<10^(-5) %if the fucntion value at xc close to zero
        break % quit the loop, we have found the root!
    end
end

xc % print value of root
fc % print value of function
iter %number of iterations
%--------------

