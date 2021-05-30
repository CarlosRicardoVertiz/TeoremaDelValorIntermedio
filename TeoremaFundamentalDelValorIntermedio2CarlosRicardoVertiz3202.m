% Titulo: Teorema del valor intermedio
% Autor: Carlos Ricardo Vertiz 
%correo carlosricardovertiz@gmail.com
% Fecha: Sabado 29 de mayo del 2021

%Resuelve en hoja milimetrica y en heamienta actave
%Obtener el valor de "c" o "k" que cumpla 
%Con el teorema del valor intermedio 

%Profesor, espero que veamos en la siguiente clase 
%mas acerca del valor intermedio , ya que me quedaron muchas dudas

%f(g)=x^2-3*x-2, [1,4], c=3
clc 
clear

syms x;
syms c;
f(x)=x^2-3*x-2;
a=1;
b=4;
ezplot(f(x));
%Sacamos resultado de f(a) y f(b)
fun= inline (char(f(x),x));
evaluaU= fun(a);
evaluaD = fun(b);

disp("Funcion derivada: ")
%funcion derivada:
df= diff(f,x)
%Pendiente de [a,b]
fc=((evaluaD)-(evaluaU))/(b-a)
disp(fc)
%Calculo de "C"
disp (df==fc);

%Simplicamos la ecuacion
valor_de_C=solve(df==fc,x);
disp("Valor de C");
disp(valor_de_C)

