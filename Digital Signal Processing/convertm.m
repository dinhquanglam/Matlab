function [y, ny] = convert_m (x, nx, h, nh)

% Quy tr�nh t�ch ch?p ???c s?a ??i ?? x? l� t�n hi?u

% ------------------------------------------------- -

% [y, ny] = cod_m (x, nx, h, nh)

% y = k?t qu? t�ch ch?p

% ny = h? tr? c?a y

% x = t�n hi?u ??u ti�n v? h? tr? nx

% nx = h? tr? c?a x

% h = t�n hi?u th? hai tr�n h? tr? nh

% nh = h? tr? c?a h

%

nyb = nx (1) + nh (1); nye = nx (length (x)) + nh (length (h));

ny = [nyb: nye];

y = chuy?n ??i (x, h);