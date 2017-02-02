%graphing stuff
clf;
clear;
figure(gcf);
hold on;

accuracy = 40; %num points to use. Higher = more squares
start = -10;
stop = 10;
vect = linspace(start, stop, accuracy);


%define dependent variables (make a grid on which to solve)
[x,y] = meshgrid(vect, vect);

%define function as a func of dependent variables
z = x.^2 + y.^2

%plot it
surf(x, y, z);

%labels
xlabel('X', 'FontSize', 18);
ylabel('Y', 'FontSize', 18);
zlabel('Z', 'FontSize', 18);