function [nangLuong] = tinhNangLuong(x, n)
    nangLuong = 0;
    for i = 1:length(n)
        nangLuong = nangLuong+(x(i)*x(i));
    end
end