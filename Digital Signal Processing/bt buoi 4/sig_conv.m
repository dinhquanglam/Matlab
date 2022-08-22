function[y,ny] = sig_conv(x, nx, h, nh)
    y=conv(x,h);
    n1=nx(1)+nh(1);
    n2=nx(end)+nh(end);
    ny=n1:n2;
end