%[h,w] = freqz(b,a,p)
%? d?ng ??n gi?n nh?t, freqz cung c?p c�c vect? h? s? l?c a v� b, m?t s? nguy�n p 
%ch? s? ?i?m t�nh ?�p ?ng t?n s?. H�m freqz tr? ?�p ?ng t?n s? ph?c ? vect? h v� ?�p 
%?ng t?n s? th?c ? vect? w theo rad/s.

%T�m d�p ung tan so 256 diem cua mot bo loc Chebyshev loai I bac 12. Tan so 
%lay mau fs l� 1000Hz. Tan so cat 200Hz.
 [b,a] = cheby1(12,0.5,200/500);
 [h,f] = freqz(b,a,256,1000);
 figure;
 plot(f,h); %V� c� ca tan so lay mau, h�m freqz tra lai mot vecto f chua 256 diem tan so giua 0 
%v� fs/2.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Mot loc thong thap qua Butterworth bac 9 voi tan so cat o 400Hz, voi tan so lay 
%mau l� 2000Hz l�:
[b,a] = butter(9, 400/1000);
%de t�nh d�p ung tan so phuc 256 diem, v� ve do thi bi�n do v� pha theo tan so:
freqz(b,a,256,2000);
fvtool(b,a);
