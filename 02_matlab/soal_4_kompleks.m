% ===================================================== 
%  UTS Matematika Sains Data — Semester Genap 2025/2026 
%  Soal 4 — Segmentasi Pelanggan dan komposisi fungsi harga (Fasor)
%  Nama  : Satrio Radithya Prayata  
%  NIM   : 2510514021 
%  Parameter: N=21, a=2, b=1, K=4, theta0=65, alpha=0.002 
%  Tanggal: 25 april 2026
% ===================================================== 

clc; clear; close all; 

% Tampilkan timestamp
disp(['Tanggal & Waktu Eksekusi: ', datestr(now)])

% --- Deklarasi Parameter ---
N = 21; a = 2; b = 1; K = 4; theta0 = 65;

% --- Subsoal B: Verifikasi Operasi Manual ---
z1 = 4 + 2i;
z2 = 2 - 4i;

disp('--- Verifikasi Operasi Manual ---');
z_add = z1 + z2;
disp(['z1 + z2 = ', num2str(real(z_add)), ' + ', num2str(imag(z_add)), 'i']);

z_mul = z1 * z2;
disp(['z1 * z2 = ', num2str(real(z_mul)), ' + ', num2str(imag(z_mul)), 'i']);

z_div = z1 / z2;
disp(['z1 / z2 = ', num2str(real(z_div)), ' + ', num2str(imag(z_div)), 'i']);

z_diff_abs = abs(z1 - z2);
disp(['|z1 - z2| = ', num2str(z_diff_abs)]);