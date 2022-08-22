function filter_spect (H_w)
%%% plot abs frequency spectrum from H(w)
mag= abs(H);
H_abs_db = 20*log10((mag+eps)/max(mag));
plot(H_abs_db);