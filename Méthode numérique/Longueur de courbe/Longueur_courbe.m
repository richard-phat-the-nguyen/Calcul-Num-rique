clear all
close all
clc
%definition de variable
r=2;
n=50;
% définition du vecteur theta, le parametre x et y
theta=linspace(0,2*pi,n);
x=r*cos(theta);
y=r*sin(theta);

figure ()
plot(x,y,'-or')
axis equal

L=0;
    for i=2:n
       L=L+ sqrt((x(i)-x(i-1))^2 + (y(i)-y(i-1))^2) ;
    end
fprintf('La longueur L est approximativement %fpi par %n points',L/pi,n)
fprintf('\nLa valeur exacte est %fpi',2*2)
    
    
    