% ===================================================== 
%  UTS Matematika Sains Data — Semester Genap 2025/2026 
%  Soal 3d <Segmentasi Pelanggan dan komposisi fungsi harga>
%  Nama  : <Satrio Radithya Prayata> 
%  NIM   : 2510514021 
%  Parameter: N=21, a=2, b=1, K=4, theta0=65, alpha=0.002 
%  Tanggal: 25 April 2026
% ===================================================== 

clc; clear; close all; 

% Tampilkan timestamp
disp(['Tanggal & Waktu Eksekusi: ', datestr(now)])
disp('=====================================================')

% --- Lanjutan Script MATLAB untuk 3(d) ---
disp('--- Verifikasi Soal 3.d ---')

% Mendefinisikan variabel simbolik
syms x

% Mendefinisikan fungsi awal f(x)
f = 4 * x + 3;

% 1. Mencari Invers menggunakan finverse
f_inv = finverse(f);
fprintf('Invers fungsi f^-1(x) adalah: %s\n', char(f_inv));

% 2. Mencari Volume Pembelian dengan target pendapatan (hasil = 403)
target_rev = 4 * 100 + 2 + 1; 

% Substitusi nilai target pendapatan ke dalam x pada fungsi invers
volume_x = subs(f_inv, x, target_rev);

% Menampilkan hasil
fprintf('Target Pendapatan (ribu Rp) : %d\n', target_rev);
fprintf('Volume Pembelian (unit)     : %s\n', char(volume_x));