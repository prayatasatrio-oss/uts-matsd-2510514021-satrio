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
K = 4; a = 2; N = 21;

% =====================================================
% Bagian 5.4(g): Visualisasi C(x) Kontinu
% =====================================================
% Menghitung p dan q secara analitik
p_val = 2*K;             % p = 8
q_val = K*(2 - a);       % q = 0

% Buat function handle untuk C(x) menggunakan logika piecewise
% Ditambahkan 'eps' agar tidak terdeteksi divide-by-zero pas di garis K
C_func = @(x) ((x.^2 - K^2)./(x - K + eps)).*(x < K) + ...
    p_val.*(x == K) + ...
    (a.*x + q_val).*(x > K);

% Siapkan figure untuk visualisasi
figure('Name','Fungsi Biaya Distribusi Piecewise','Color','w');
fplot(C_func, [0, 2*K], 'LineWidth', 2, 'Color', 'b');
hold on;

% Tambahkan garis vertikal tipis di x = K (titik sambungan)
xline(K, '--r', 'Titik Sambungan (x=K)', 'LineWidth', 1.5, ...
    'LabelVerticalAlignment', 'bottom', 'LabelHorizontalAlignment', 'left');
plot(K, p_val, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'y'); % Highlight titik p

% Anotasi Grafik
title(sprintf('Kekontinuan Fungsi Biaya C(x) [NIM Akhir: %d]', N));
xlabel('Jumlah Produksi (x)');
ylabel('Biaya Distribusi C(x)');
grid on;
legend('Kurva Fungsi C(x)', 'Batas Kontinuitas (x=K)', 'Titik Temu (K, p)');
hold off;