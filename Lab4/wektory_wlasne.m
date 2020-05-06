close all;
clear  all;

syms l 
%zadania macierz
A=[3,1,2;1,8,1;2,1,1];
%macierz diagonalna
I=eye(3,3);
A_l=A-l*I;
%wyznacznik macierz z niewiadom� l=lambda
d=det(A_l);
%pierwiastki
soll = solve(d, l);
%I-macierz diagonalna, V-macierz wektor�w w�asnych
[V,I]=eig(A);

disp('Warto�ci w�asne macierzy:');
disp(single(subs(soll)));
disp('Wektory w�asne macierzy:');
s = size(V);
for i = 1 :s
    V(:,i)=V(:,i)/V(end,i);
    disp("Wektor "+ i + ":")
    disp(V(:,i)');
end
