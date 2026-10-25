pkg load control;

p1 = 2*pi*12e3;
p2 = 2*pi*70e3;
p3 = 2*pi*140e3;
K = 900;

% Función de transferencia a lazo abierto
s = tf('s');
G = K / ((1 + s/p1)*(1 + s/p2)*(1 + s/p3));

% Sistema a lazo cerrado unitario: T(s) = G(s) / (1 + G(s))
T = feedback(G, 1);

polos=pole(T);

B = 1/148.59;

GB_estable = G*B;

T_estable = feedback(G,B);

polos_estables=pole(T_estable);

%   % 1. Visualizar los polos en el plano complejo
%   figure(1);
%   pzmap(G);
%   title('Polos de Lazo Abierto');
%   grid on;
%
%   % 2. Respuesta al escalón en el tiempo
%   figure(2);
%   step(G);
%   title('Respuesta al Escalón G(s)');
%   grid on;
%
%   figure(3);
%   pzmap(T);
%   title('Polos de Lazo Cerrado');
%   grid on;
%
%   figure(4);
%   step(T);
%   title('Respuesta al Escalón T(s)');
%   grid on;
%
figure(5);
pzmap(T_estable);
title('Polos de Lazo Cerrado estable');
grid on;

figure(6);
step(T_estable);
title('Respuesta al Escalón T_estable(s)');
grid on;

bodas(GB_estable);

%pause();
