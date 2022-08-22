clc; close all;  clear all;
n = 100;
x = rand (1,n);
y = rand (1,n);
in_circle = 0;
in_square = n;
for i = 1:n
   if (x(i) * x(i) + y(i) * y(i)) < 1
       in_circle = in_circle + 1;
   end    
end    

pi_value = 4* in_circle/ in_square

figure;
scatter(x,y)
hold on;
circle(0,0,1)

xlim([0 1])
ylim([0 1])
