% Una aproximaci�n de taylor no es m�s que una forma de expresar una
% funci�n a trav�z de las derivadas 'n' de sus elementos
close all;
clear
clc

%Creamos un vector que asignara los valores
x = -20:1:20;
f=x.^4-3*x.^2+1;
%Aqu� se pone la funci�n de aproximaci�n de TAYLOR
p1=-1-2*(x-1)+3*(x-1).^2+4*(x-1).^3;
p2=-1-2*(x-1)+3*(x-1).^2+4*(x-1).^3+(x-1).^4;
plot(x,f,'Linewidth',1.5)
grid on
hold on
plot(x,p1,'r')
grid on
hold on
plot(x,p2,'b')
grid on
xL=xlim;
yL=ylim;
line([0,0],yL,'color','black');
line(xL,[0,0],'color','black');
legend('f(x)','p1(x)','p2(x)','Location','southeast')
xlabel('x')
ylabel('y')
title('Aproximaciones de TAYLOR','FontSize',14)