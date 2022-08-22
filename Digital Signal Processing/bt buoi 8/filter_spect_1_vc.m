function filter_spect_1_vc (h)
    %%% plot abs frequency spectrum from h(n)
    w = 0:0.01*pi:pi;
    [Hw]= freqz(h,1,w);
    plot(w/(pi*2), 20*log10(abs(Hw)));
    xlabel('Normalized Frequency (v)')
    ylabel('Magnitude (dB)')
    
end