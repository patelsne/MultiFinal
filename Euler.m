
initialCond = input('Input the y-intercept (when x=0)');
approximation = input('where do you want to approximate the function to?');
stepSize = input('What is your step size (make divisible to approximation)');
n = approximation/stepSize;
finalY = initialCond;
xn = 0;
f = figure('Name', 'Demonstrating Euler''s Method');
xlabel('x-axis');
ylabel('y-axis');
title('Euler''s Method')
for i = 1:n
    h = animatedline('Marker','.');
    addpoints(h,xn,finalY);
    prevX = xn;
    prevY = finalY;
    hold on;
    pause(.01);
    finalY = finalY + stepSize*yPrime(xn,finalY);
    xn = xn + stepSize;
    plot([prevX xn], [prevY finalY]);
end
addpoints(h,xn,finalY);
answer = finalY
grid on;


function yn1 = yPrime(x,y)
%input formula of derivative below:
    yn1 = y-0.5*exp(x/2)*sin(5*x)+5*exp(x/2)*cos(5*x);
end
