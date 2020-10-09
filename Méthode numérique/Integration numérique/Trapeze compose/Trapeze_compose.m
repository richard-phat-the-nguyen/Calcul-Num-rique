clear all
close all
clc

% Traçage de la fonction 1/x^2

n_points=25;
a=0.1;
b=4;

x=linspace(a,b,n_points);
y=sqrt(1+1./x);

figure ()
plot(x,y,'-or')



Aire=0;
  for i=2:n_points
    Aire=Aire + (y(i)+y(i-1))/2 * (x(i)-x(i-1)); 
   end
fprintf('L''estimation de l''intégral entre la borne %f et %f est: %f \navec %d nombre de points\n',a,b,Aire,n_points);