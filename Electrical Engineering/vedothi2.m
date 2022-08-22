t = -pi:0.1:pi;
t=t.^2;
y = sin(t);
plot(t,y,'r');
xlabel('thoi gian');
ylabel('bien do');
title('do thi y=sint');
grid on; % luoi
ylim([-2 2]); %khoang y
xlim([ -2 10]);
z= cos(t);
hold on; % giu lai do thi truoc
plot(t,z,'b');
legend('y = sin(t)','z= cos(t)'); %chu thich