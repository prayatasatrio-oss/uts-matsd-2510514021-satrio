% ===================================================== 
%  UTS Matematika Sains Data — Semester Genap 2025/2026 
%  Soal 2f — Visualisasi Citra Enkripsi
%  Nama  : <Satrio Radithya Prayata> 
%  NIM   : 2510514021 
%  Parameter: N=21, a=2, b=1, K=4, theta0=65, alpha=0.002 
%  Tanggal:  24 April 2026
% ===================================================== 

clc; clear; close all;

% Tampilkan timestamp
disp(['Tanggal & Waktu Eksekusi: ', datestr(now)])
disp('=====================================================')

P = [120,  71, 200; 
    80,   4,  31; 
    51,  90, 170];


A = [3, 1, 2; 
    1, 4, 1; 
    1, 1, 5];

% Operasi Enkripsi
E = A * P;


figure('Name', 'Hasil Enkripsi Citra Logo (NIM: 2510514021)', 'Position', [100 100 800 400]);

% Subplot 1: Citra Piksel Asli
subplot(1, 2, 1);
% Menggunakan imshow(P, []) agar rentang warna disesuaikan otomatis dari nilai min-max
imshow(P, []); 
title('Blok Piksel Asli (P)', 'FontSize', 12, 'FontWeight', 'bold');
xlabel('Kolom (j)');
ylabel('Baris (i)');
colorbar; % Menampilkan skala nilai piksel

% Subplot 2: Citra Piksel Terenkripsi
subplot(1, 2, 2);
% Menggunakan imshow(E, []) untuk memvisualisasikan piksel yang telah diacak
imshow(E, []);
title('Blok Terenkripsi (E)', 'FontSize', 12, 'FontWeight', 'bold');
xlabel('Kolom (j)');
ylabel('Baris (i)');
colorbar; % Menampilkan skala nilai piksel yang telah membesar

% Judul utama untuk keseluruhan figure
sgtitle('Perbandingan Citra Sebelum dan Sesudah Transformasi Matriks (Enkripsi)', 'FontSize', 14);