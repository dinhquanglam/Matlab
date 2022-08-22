function [e]=sig_ener(x_n)
    e=sum(abs(x_n).^2);
end