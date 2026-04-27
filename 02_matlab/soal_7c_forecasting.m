% ======================================================
% UTS Matematika Sains Data – Soal 7 (c)
% ------------------------------------------------------
% Nama  : Satrio Radithya Prayata 
% NIM   : 2510514021
% Parameter: N=21, a=2, b=1, K=4 theta0=65, alpha=0.002
% Tanggal: 28 April 2026 
% ======================================================

clc; clear;

% Tampilkan timestamp
disp(['Tanggal & Waktu Eksekusi: ', datestr(now)])
disp('=====================================================')

% =========================
% Parameter
% =========================
a = 2;
K = 4;
n = 1:12;

% =========================
% Data penjualan
% =========================
S = 50 + K*n + (-1).^n * (a+1);

% =========================
% Hitung Sigma
% =========================
T1 = sum(S);        % Σ S_n
T2 = sum(S.^2);     % Σ S_n^2

% =========================
% Output
% =========================
fprintf('\nHasil Perhitungan:\n');
fprintf('T1 = Σ S_n     = %d\n', T1);
fprintf('T2 = Σ S_n^2   = %d\n', T2);