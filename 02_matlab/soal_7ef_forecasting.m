% ======================================================
% UTS Matematika Sains Data – Soal 7 (e)
% ------------------------------------------------------
% Nama  : Satrio Radithya Prayata
% NIM   : 2510514021
% Parameter: N=21, a=2, b=1, K=4, theta0=65, alpha=0.002
% Tanggal: 28 April 2026 
% ======================================================

clc; clear; close all;

% Tampilkan timestamp
disp(['Tanggal & Waktu Eksekusi: ', datestr(now)])
disp('=====================================================')

% =========================
% Data historis
% =========================
a = 2; K = 1;
t = 1:12;

S = 50 + K*t + (-1).^t * (a+1);

% =========================
% Regresi linear (trend)
% =========================
p = polyfit(t, S, 1);   % p(1)=slope, p(2)=intercept

trend = polyval(p, t);

% =========================
% Prediksi 6 bulan ke depan
% =========================
t_pred = 13:18;
S_pred = polyval(p, t_pred);

% =========================
% Hitung MAE
% =========================
MAE = mean(abs(S - trend));

% =========================
% Plot
% =========================
figure; hold on; grid on;

% data historis
plot(t, S, 'bo', 'MarkerFaceColor','b')

% garis tren
plot(t, trend, 'r--', 'LineWidth',2)

% prediksi
plot(t_pred, S_pred, 'g^', 'MarkerFaceColor','g')

xlabel('Bulan')
ylabel('Penjualan (juta Rp)')
title('Trend dan Forecast Penjualan')

legend('Data Historis', 'Trend Linear', 'Prediksi', ...
    'Location','best')

% =========================
% Output
% =========================
fprintf('\nKoefisien Trend:\n');
fprintf('Slope     = %.4f\n', p(1));
fprintf('Intercept = %.4f\n', p(2));

fprintf('\nNilai MAE = %.4f\n', MAE);

disp('Prediksi S13 - S18:');
disp(S_pred);