%09/03/2022
%Dinh Quang Lam_19021478
%K64_DACLC1_UET_VNU
%Intelligent Robot Systems
% ex1_Chapter 2

%Assume that a mobile robot is considered to be a moving point (Xr, Yr) in a 2-dimesional space (Figure 1
%(a)). Also in the environment are two landmarks Lm1 and Lm2, located at (X1, Y1) and (X2, Y2), respectively.
%If the robot trajectory is defined as:
% xr = 5 + 0.3 cos(0.1*pi*t) (m)
% yr = 2 + 0.5 sin(0.2*pi*t) (m)
%and the landmarks are located at Lm1 at (5, 3) m and Lm2 at (4.5, 2.4) m.

%Write a MATLAB program to:
%1 Calculate the trajectory of the robot and plot the robot trajectory in red stars for t ∈ [0, 10] seconds at
%0.1 second interval. Also plot the landmarks by a red square in the same figure (Figure 1 (b)).

%2 Calculate the measurement of the distance and angle between the robot and the landmarks while the
%robot is moving and record the distance (in metres) to an array named dist, and the angle (in radians) to
%an array named ‘ang’. Show the angle range in both [– pi pi] and [0 2pi].

%3 Plot the distances and angles between the robot and landmarks with clear legend.

clc, clear all, close all;
t = [0:0.1:10];
x = 5 + 0.3*cos(0.1*pi*t);
y = 2 + 0.5*sin(0.2*pi*t);

%hinh f1 ve quy dao cua robot va 2 diem A B
f1=figure;
plot(x,y,'m*',x,y,'b');
xlim([4.5,5.5]);
ylim([1.5,3]);
xlabel(['X (m)']);
ylabel(['Y (m)']);
grid on;
hold on;
X =[ 5 4.5]
Y =[ 3 2.4]
plot(X(1),Y(1),'ro');
plot(X(2),Y(2),'ro');
title('Robot trajectoty')

% tinh khoang cach cua quy dao robot den trung diem cua doan AB
A = (X(2)-X(1))/2
B = (Y(2)-Y(1))/2
dist = sqrt([((A-x).^2) + ((B-y).^2)])

%tinh goc cua 2 vecto MA va MB voi M la tap hop cac diem tren quy dao cua robot
cosO =  ( (X(1)-x).*(X(2)-x) + (Y(1)-y).*(Y(2)-y) ) ./ (( sqrt( [ (X(1)-x).^2 + (Y(1)-y).^2 ] ) ) .* ( sqrt( [ (X(2)-x).^2 + (Y(2)-y).^2 ] ) ) )
ang = acos2(cosO)

% ve hinh f2 gom khoang cach va quy dao theo thoi gian
f2=figure
subplot(2,1,1)
plot(t,dist,'b*')
xlabel(['time (s)']);
ylabel(['distance (m)']);
title('Distance for time')
grid on;

subplot(2,1,2)
plot(t,ang./pi,'g*')
xlabel(['time (s)']);
ylabel(['angle (pi rad)']);
title('Angle for time')
grid on;




