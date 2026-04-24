% ===================================================== %
% UTS Matematika Sains Data — Semester Genap 2025/2026 
% Soal 3b — Verifikasi Himpunan <Segmentasi Pelanggan dan komposisi fungsi
% harga>
% --------------------------------------------------- 
% Nama  : Satrio Radithya Prayata
% NIM   : 2510514021
% Parameter: N=21, a=2, b=1, K=4, theta0=65, alpha=0.002 
% Tanggal : 25/04/2026
% =====================================================

clc; clear; close all; 

% Tampilkan timestamp
disp(['Tanggal & Waktu Eksekusi: ', datestr(now)])
disp('=====================================================')

% Parameter personalisasi berdasarkan NIM ...21
N = 21;  a = 2;  b = 1;  K = 4; 
theta0 = 65; % derajat 
alpha_lr = 0.002; 

%% 1. Definisi Himpunan
N = 21;
U = N:N+20; % Universe

A = [N, N+2, N+4, N+7, N+10, N+13, N+15];
B = [N+3, N+5, N+7, N+10, N+12, N+18];
C = [N+1, N+7, N+10, N+11, N+17, N+20];

%% 2. Perhitungan Verifikasi
% a. |A u B u C|
union_ABC = union(A, union(B, C));
res_a = length(union_ABC);

% b. |A n B n C|
intersect_ABC = intersect(A, intersect(B, C));
res_b = length(intersect_ABC);

% c. |(A u B) n C'| 
% Catatan: Irisan dengan komplemen C sama dengan selisih himpunan (setdiff)
union_AB = union(A, B);
res_c = length(setdiff(union_AB, C));

% d. |A XOR B| (Symmetric Difference)
res_d = length(setxor(A, B));

%% 3. Menampilkan Hasil
fprintf('========================================\n');
fprintf('       VERIFIKASI HIMPUNAN (N=21)       \n');
fprintf('========================================\n');
fprintf('1. |A u B u C|       : %d\n', res_a);
fprintf('2. |A n B n C|       : %d\n', res_b);
fprintf('3. |(A u B) n C''|     : %d\n', res_c);
fprintf('4. |A (+) B|         : %d\n', res_d);
fprintf('----------------------------------------\n');