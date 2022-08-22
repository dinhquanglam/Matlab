function filter_spect_1 (h)
    %%% plot abs frequency spectrum from h(n)
    w = 0:0.01*pi:pi;
    [Hw]= freqz(h,1,w);
    plot(w/pi, 20*log10(abs(Hw)));
    xlabel('Normalized Frequency (\times\pi rad/sample)')
    ylabel('Magnitude (dB)')
    
end