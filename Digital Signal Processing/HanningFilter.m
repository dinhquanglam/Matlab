clc; close all; clear all;

wp = 0.2*pi;
ws = 0.4*pi;

vp = wp / (2*pi);
vs = ws / (2*pi);

Rp = 0.5;
As = 45;

vc = (vp + vs)/2;

C = 3.21;
L = ceil(C/(vs - vp));

wc = vc * 2 * pi;

h_ideal = ideal_LP(wc, L);

w = hanning(L);

w = w';
h_LF = h_ideal.*w;

figure;
stem(h_LF)
axis tight

figure1 = figure('Color',[1 1 1]);

axes1 = axes('Parent',figure1);
filter_spect_1(h_LF)
ylabel('\it{|H(e^{jw})|} (dB)','FontWeight','bold');

% Create xlabel
xlabel('Normalized Frequency (\it{v})','FontWeight','bold');

% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes1,[-100 5]);
box(axes1,'on');
% Set the remaining axes properties
set(axes1,'FontSize',12,'FontWeight','bold','XGrid','on','XTick',...
    [0 0.1 0.15 0.2 0.5],'YGrid','on','YTick',[-60 -40 -2]);








