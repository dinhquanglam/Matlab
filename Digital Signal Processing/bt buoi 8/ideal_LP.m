function h_ideal = ideal_LP(wc,M)
    alpha = (M-1)/2;
    n = [0:1:(M-1)];
    m = n - alpha + eps;
    h_ideal = sin(wc*m)./(pi*m);
end