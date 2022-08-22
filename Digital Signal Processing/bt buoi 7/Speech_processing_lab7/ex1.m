% Bai tap 1:
 % read audio file:
 
 [x, fs]= audioread('start.au');
 % nghe thu:
 sound(x,fs);
 % hien thi:
 plot(x);
 
 %canh vi tri cua voiced va unvoiced:
 %voiced: x[3259-5260]
 %unvoiced: x[2003:2768] va x[6123:6548]
 
 % nghe thu am thanh o cac khoang voiced va unvoiced
 sound(x(2003:2768), fs);
 sound(x(6123:6548), fs);
 sound(x(3259:5260), fs);
 
 % xac dinh khoang cach giua cac dinh :
 %cach1: Su dung chuot
 %.....
 
 % %cach2: Su dung ham findpeaks (doc help cua Matlab truoc)

 [p, location] = findpeaks(x(3600:3800),'MinPeakProminence',1);
 location(2)-location(1); % 64 samples hay 64* 1/fs = 8 ms => giong nam
 
 figure;
 plot(x(3600:3800))
 hold on;
 plot(location,p,'ro')
 
 %cach3: Su dung ham findpeaks voi option f_sampling 
 
  [p, location] = findpeaks(x(3600:3800),fs,'MinPeakProminence',1);
 location(2)-location(1) % 0.008 hay 8ms
 
 

 