
n=-200:200;
h=2*sin(0.01*pi.*n).*cos(0.5*pi.*n);
figure;
subplot(311);
stem(n,h);

h=(1/2).^n;
subplot(312);
stem(n,h);

h=3.^n;
subplot(313);
stem(n,h);