function [y, ny] = convert_m (x, nx, h, nh)

% Quy trình tích ch?p ???c s?a ??i ?? x? lý tín hi?u

% ------------------------------------------------- -

% [y, ny] = cod_m (x, nx, h, nh)

% y = k?t qu? tích ch?p

% ny = h? tr? c?a y

% x = tín hi?u ??u tiên v? h? tr? nx

% nx = h? tr? c?a x

% h = tín hi?u th? hai trên h? tr? nh

% nh = h? tr? c?a h

%

nyb = nx (1) + nh (1); nye = nx (length (x)) + nh (length (h));

ny = [nyb: nye];

y = chuy?n ??i (x, h);