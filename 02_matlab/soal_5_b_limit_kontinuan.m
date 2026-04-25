% ===================================================== 
%  UTS Matematika Sains Data — Semester Genap 2025/2026 
%  Soal 5 — Konvergensi Customer Lifetime Value dan Kekontinuan Biaya 
%  Nama  : Satrio Radithya Prayata
%  NIM   : 2510514021
%  Parameter: N=21, a=2, b=1, K=4, theta0=65, alpha=0.002 
%  Tanggal: 26 April 2026 
% ===================================================== 

clc; clear; close all; 

% Tampilkan timestamp eksekusi
disp(['Tanggal & Waktu Eksekusi: ', datestr(now)])
disp('=====================================================')

% --- Parameter ---
K = 4; a = 2; b = 1;

% =====================================================
% Bagian 5.1(b): Verifikasi Limit Menggunakan syms
% =====================================================
syms x real;

% Definisi fungsi
f1 = (x^2 - K^2) / (x - K);
f2 = (sqrt(x + (K+1)^2) - (K+1)) / x;
f3 = ((a+2)*x^3 + b*x + 7) / (x^3 - x + K);

% Hitung limit via MATLAB
L1_matlab = limit(f1, x, K);
L2_matlab = limit(f2, x, 0);
L3_matlab = limit(f3, x, inf);

disp('--- Verifikasi Hasil Limit (MATLAB vs Manual) ---');
disp(['L1 MATLAB = ', char(L1_matlab), ' | Manual = 8']);
disp(['L2 MATLAB = ', char(L2_matlab), ' | Manual = 1/10']);
disp(['L3 MATLAB = ', char(L3_matlab), ' | Manual = 4']);