clc
close all

pkg load control

s = tf('s');
G_num = 900
G_den = (1+s/(2*pi*12e3))*(1+s/(2*pi*70e3))*(1+s/(2*pi*140e3))
G = G_num/G_den

C1 = 1/(1+s/(2*pi*1200))

G_C = G*C1

[G, w] = bodas(G_C);

