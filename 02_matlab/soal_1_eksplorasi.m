% =====================================================
% UTS Matematika Sains Data — Semester Genap 2025/2026
% Soal <nomor 1> — <Eksplorasi Awal dan Profil Data Transaksi>
% Nama : Satrio Radithya Prayata 
% NIM : 2510514021
% Parameter: N=21, a=2, b=1, K=4, theta0=65, alpha=0.002
% Tanggal: 23 April 2026
% =====================================================

clc; clear; close all;

% Parameter personalisasi berdasarkan NIM ...21
N = 21; a = 2; b = 1; K = 4;
theta0 = 65; % derajat
alpha_lr = 0.002;

% --- Bagian (c): Pembentukan Data dan Visualisasi ---

% Inisialisasi indeks toko i = 1 sampai 7
i = 1:7;

% Rumus Pembentukan Data Toko Di
% Di = 20 + (K * i) + (mod(a*i, 7)) - (mod(b*i, 5))
Di = 20 + (K .* i) + mod(a .* i, 7) - mod(b .* i, 5);

% Hitung Rata-rata untuk garis horizontal
rata_rata = mean(Di);

% Membuat Visualisasi
figure('Color', 'w'); % Membuat figure dengan background putih
bar_plot = bar(i, Di, 'FaceColor', [0.2 0.6 0.8]); % Warna biru muda
hold on;

% Menambahkan garis rata-rata horizontal
yline(rata_rata, 'r--', 'LineWidth', 2); 

% Menambahkan teks informasi rata-rata di grafik
text(1.2, rata_rata + 2, ['Rata-rata: ', num2str(rata_rata, '%.2f')], 'Color', 'r', 'FontWeight', 'bold');

% Pengaturan Label dan Judul (Bahasa Indonesia & Mengandung NIM)
xlabel('Nomor Toko (i)');
ylabel('Penjualan (Juta Rupiah)');
title(['Analisis Penjualan per Toko - NIM: ', num2str(2510514021)]);
grid on;

% Mengatur rentang sumbu X agar rapi
xticks(1:7);
ylim([0, max(Di) + 10]); % Memberi ruang di atas bar tertinggi

% Menyimpan hasil sebagai file PNG
saveas(gcf, 'Penjualan_Toko_Satrio_2510514021.png');

% Menampilkan pesan di Command Window
fprintf('Data Di yang terbentuk: \n');
disp(Di);
fprintf('Diagram telah disimpan dengan nama: Penjualan_Toko_Satrio_2510514021.png\n');