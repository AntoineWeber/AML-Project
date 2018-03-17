clc
clear all
close all

t = 0:pi/10:2*pi;
[X1,Y1,Z1] = cylinder(4*cos(t));

% surf(X1); %mountain shape

len = length(X1);
x = [];
y = [];
z = [];

for i=1:1:len
    x = [x; i*ones(len,1)];
    y = [y; transpose([1:len])];
    z = [z; transpose(X1(i,:))];
end

points_mountain = [x,y,z];
%%

% surf(X1,Y1,Z1); %cylinder shape


[X1,Y1,Z1] = cylinder(4*cos(t));

len = length(X1);

x = [];
y = [];
z = [];

points_cylinder = [];

for i=1:1:len
    for j=1:1:len
        points_cylinder = [points_cylinder; X1(i,j),Y1(i,j),Z1(i,j)];
    end
end

%%
% create 2sheet shape
fontSize = 20;
a=1;
b=2;
c=3;
numElements = 100;
constant = 1;
x = linspace(-2*a, 2*a, numElements);
y = linspace(-2*b, 2*b, numElements);
[X, Y] = meshgrid(x, y);


x = reshape(X,[],1);
y = reshape(Y,[],1);
z1 = c * sqrt(constant + x.^2 / a^2 + y.^2 / b^2);
z2 = -c * sqrt(constant + x.^2 / a^2 + x.^2 / b^2);
points_hyperbolas = [x,y,z1,z2];

% Z1 = c * sqrt(constant + X.^2 / a^2 + Y.^2 / b^2);
% Z1 = reshape(Z1, [], length(y));
% surf(Z1);
% Z2 = -c * sqrt(constant + X.^2 / a^2 + Y.^2 / b^2);
% Z2 = reshape(Z2, [], length(y));
% hold on;
% surf(Z2);
