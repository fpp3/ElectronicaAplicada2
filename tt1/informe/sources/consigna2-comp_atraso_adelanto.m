clc
close all

pkg load control

s = tf('s')
G_num = 900
G_den = (1+s/(2*pi*12e3))*(1+s/(2*pi*70e3))*(1+s/(2*pi*140e3))
G = G_num/G_den

C2_num = 1/(1+s/(2*pi*1.1e6))
C2_den = 1/(1+s/(2*pi*200e3))
C2 = C2_num/C2_den

G_C = G*C2

[G, w] = bodas(G_C)

