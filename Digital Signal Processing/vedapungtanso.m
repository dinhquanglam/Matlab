%[h,w] = freqz(b,a,p)
%? d?ng ??n gi?n nh?t, freqz cung c?p các vect? h? s? l?c a và b, m?t s? nguyên p 
%ch? s? ?i?m tính ?áp ?ng t?n s?. Hàm freqz tr? ?áp ?ng t?n s? ph?c ? vect? h và ?áp 
%?ng t?n s? th?c ? vect? w theo rad/s.

%Tìm dáp ung tan so 256 diem cua mot bo loc Chebyshev loai I bac 12. Tan so 
%lay mau fs là 1000Hz. Tan so cat 200Hz.
 [b,a] = cheby1(12,0.5,200/500);
 [h,f] = freqz(b,a,256,1000);
 figure;
 plot(f,h); %Vì có ca tan so lay mau, hàm freqz tra lai mot vecto f chua 256 diem tan so giua 0 
%và fs/2.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Mot loc thong thap qua Butterworth bac 9 voi tan so cat o 400Hz, voi tan so lay 
%mau là 2000Hz là:
[b,a] = butter(9, 400/1000);
%de tính dáp ung tan so phuc 256 diem, và ve do thi biên do và pha theo tan so:
freqz(b,a,256,2000);
fvtool(b,a);
