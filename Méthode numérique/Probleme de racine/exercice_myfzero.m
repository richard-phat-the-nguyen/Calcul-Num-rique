clear all
close all
clc

% Initialisation des variables
npts=40;
%définition du vecteur x et y
x=linspace(-2,2,npts);
y=x.^3-x.^2-1;

%tracage de la courbe
figure ()
plot(x,y,'-r')
hold on
plot([-2,2],[0,0],'-k')
hold off
xlabel('x')
ylabel('f(x)=x^3-x^2-1')
set(gca,'FontSize',20)

%structure d'appel de la fonction my_fzero avec le '@F'
a=1;
b=2;
r=my_fzero(@F, [a b]);

fprintf('La racine approximé est %f\n',r)