figure(1);
x = linspace(0, 2, 40);
y = linspace(0, 2, 40);
[x, y] = meshgrid(x, y);
D = depth(x,y);
mesh(x, y, D);
grid on;
box on;
title("Depth of Ocean Floor");
zlabel("Depth (meters)");
ylabel("Distance (km)");
xlabel("Distance (km)");

figure(2);

x = linspace(0, 2, 40);
y = linspace(0, 2, 40);
[x, y] = meshgrid(x, y);
D = depth(x,y);
%in an example where the ocean floor is 1000 meters deep
oceanFloor = 1000 - D;
mesh(x, y, oceanFloor);
grid on;
box on;
title("Ocean Floor");
zlabel("Depth (meters)");
ylabel("Distance (km)");
xlabel("Distance (km)");

depthPtC = depth(1,0.5);

steepx = difx(1,0.5);
steepy = dify(1,0.5);

direction = "<" + steepx + ", " + steepy + ">";
function t = depth(x,y)
    t = 250 + 30*x.^2 + 50*sin(pi*y/2);
end

function dif = difx(x,y)
    dif = 60*x + y*0;
end

function dif = dify(x,y)
    dif = 50*(pi/2)*cos(pi*y/2) + x*0;
end

