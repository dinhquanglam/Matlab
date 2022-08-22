function filter_spect_1 (h)
    %%% plot abs frequency spectrum from h(n)
    w = 0:0.0001*pi:pi;
    [Hw]= freqz(h,1,w);
    plot(w/(2*pi), 20*log10(abs(Hw)),'LineWidth',2,'Color',[0 0 1]);
    xlabel('Normalized Frequency (v)')
    ylabel('|H(e^(jw))| (dB)')
    
end