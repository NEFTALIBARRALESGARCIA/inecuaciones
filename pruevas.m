%Octave Script
%title                 : Resolución de Inecuaciones 
%Decription     : Script para llevar a cabo la solucion de tres inecuaciones 
%Authors          : Ernesto Archundia Motiel, NEFTALI BARRALES GARCIA
%Date               : 20211007
%Version          : 1
%Usage            : octave >/path/Inecuaciones
%Notes            : Requiere apicación octave, usar su linea de comandos

pkg load symbolic
syms x

% Inecuación De Primer Grado 
disp ('Inecuacion de primer grado'); 
syms x 
solve(x<-12) 
x=(-20:10) 
y=x+12 
subplot(3,3,1) 
plot(x,y,'ro-') 
disp(''); 
 
 
% Inecuacion de Segundo Grado 
disp ('Inecuacion de segundo grado'); 
syms x 
solve(x^2+5>9) 
x=[-10:12] 
y=x+2 
subplot(3,3,2) 
plot(x,y,'ro-') 
disp('');

%Inecuaciones de Valor Absoluto
syms x
disp("...:::Inecuacion de Valor Absoluto:::...")
disp("|x+7|<2")
solve(abs(x+7)>2)

subplot(2,2,1)
x=[-100:-9]
y=x+7
plot(x,y,'ro-',"markersize",10,"linewidth",3)
hold on
plot([-20 7.8],[0,0],'k+-',"linewidth",5,"markersize",12)
plot([0 0],[-15 15],'k-',"linewidth",5)
plot(x,sign(y)*5,'bs-',"markersize",12)
xlabel("Eje X","fontsize",20)
title( "El intervalo es: (-oo,-9)")

subplot(2,2,2)
x=[-5:100]
y=x+7
plot(x,y,'ro-',"markersize",10,"linewidth",3)
hold on
plot([-20 7.8],[0,0],'k+-',"linewidth",5,"markersize",12)
plot([0 0],[-15 15],'k-',"linewidth",5)
plot(x,sign(y)*5,'bs-',"markersize",12)
xlabel("Eje X","fontsize",20)
title( "El intervalo es: (-5,oo)")
