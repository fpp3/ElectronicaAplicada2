clc;
clear;
close all;

pkg load control;

s = tf('s');

% Parámetros de la planta
p1 = 2*pi*12e3;
p2 = 2*pi*70e3;
p3 = 2*pi*140e3;
K = 900;
G = K / ((1 + s/p1)*(1 + s/p2)*(1 + s/p3));

% Compensador de atraso-adelanto (polo en 220 kHz, cero en 1.1 MHz)
fz = 1.1e6;
fp = 220e3;
wz = 2*pi*fz;
wp = 2*pi*fp;
Gc2 = (1 + s/wz) / (1 + s/wp);

% Planta compensada en lazo abierto
G_aa = G * Gc2;

% Polos y ceros de lazo abierto
polos_la = pole(G_aa);
ceros_la = zero(G_aa);
printf("=== Polos y Ceros de Lazo Abierto G_aa(s) ===\n");
disp("Polos:");
disp(polos_la);
disp("Ceros:");
disp(ceros_la);

% Márgenes de estabilidad a lazo abierto (para realimentación unitaria beta=1)
[gm_la, pm_la, wcg_la, wcp_la] = margin(G_aa);
printf("=== Márgenes a Lazo Abierto (beta = 1) ===\n");
printf("Margen de Ganancia: MG = %.2f dB en f = %.2f kHz\n", 20*log10(gm_la), wcg_la/(2*pi*1e3));
printf("Margen de Fase:     MF = %.2f° en f = %.2f kHz\n", pm_la, wcp_la/(2*pi*1e3));

% Evaluación para Margen de Fase MF = 45°
w_vec = logspace(2, 8, 100000);
[mag, phase] = bode(G_aa, w_vec);
mag = squeeze(mag);
phase = squeeze(phase);

% Frecuencia donde la fase es -135° (MF = 45°)
idx_45 = find(phase <= -135, 1);
w_45 = w_vec(idx_45);
f_45 = w_45 / (2*pi);
mag_45_db = 20*log10(mag(idx_45));

% Frecuencia donde la fase es -180°
idx_180 = find(phase <= -180, 1);
w_180 = w_vec(idx_180);
f_180 = w_180 / (2*pi);
mag_180_db = 20*log10(mag(idx_180));

mg_45 = mag_45_db - mag_180_db;

printf("\n=== Calibración para MF = 45° ===\n");
printf("Frecuencia f_45 (-135°): %.2f kHz | Magnitud: %.2f dB\n", f_45/1e3, mag_45_db);
printf("Frecuencia f_180 (-180°): %.2f kHz | Magnitud: %.2f dB\n", f_180/1e3, mag_180_db);
printf("Margen de Ganancia disponible MG_45: %.2f dB\n", mg_45);

% Atenuación requerida en la red de realimentación beta
B = 1 / mag(idx_45);
B_db = 20*log10(B);
printf("Beta requerida: %.6f (%.2f dB, factor 1/%.2f)\n", B, B_db, 1/B);

% Función de transferencia a lazo cerrado con beta
T_estable = feedback(G_aa, B);
polos_lc_estable = pole(T_estable);
ceros_lc_estable = zero(T_estable);
printf("\n=== Polos y Ceros de Lazo Cerrado Estable T_estable(s) ===\n");
disp("Polos:");
disp(polos_lc_estable);
disp("Ceros:");
disp(ceros_lc_estable);

[Wn, Z] = damp(T_estable);
printf("Frecuencias naturales (rad/s) y factores de amortiguamiento:\n");
disp([Wn, Z]);

% Ganancia de lazo calibrada L(s) = beta * G_aa(s)
L_estable = B * G_aa;
[gm_L, pm_L, wcg_L, wcp_L] = margin(L_estable);
printf("\n=== Márgenes de Ganancia de Lazo L(s) = beta * G_aa(s) ===\n");
printf("Margen de Ganancia: MG = %.2f dB en f = %.2f kHz\n", 20*log10(gm_L), wcg_L/(2*pi*1e3));
printf("Margen de Fase:     MF = %.2f° en f = %.2f kHz\n", pm_L, wcp_L/(2*pi*1e3));

% Figuras de diagnóstico
figure(1);
pzmap(G_aa);
title('Polos y Ceros de Lazo Abierto G_{aa}(s)');
grid on;

figure(2);
step(G_aa);
title('Respuesta al Escalón a Lazo Abierto G_{aa}(s)');
grid on;

figure(3);
pzmap(T_estable);
title('Polos y Ceros de Lazo Cerrado T_{estable}(s)');
grid on;

figure(4);
step(T_estable);
title('Respuesta al Escalón T_{estable}(s)');
grid on;

figure(5);
margin(L_estable);
title('Diagrama de Bode de la Ganancia de Lazo \beta \cdot G_{aa}(s)');
grid on;
