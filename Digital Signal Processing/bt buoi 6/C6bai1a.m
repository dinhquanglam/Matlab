%y(n) - 2y(n-1) + 4y(n-2)- 3y(n-3)= x(n) + 5x(n-1) - 4x(n-2) +2x(n-3)
MS = [1 -2 4 -3]
TS = [1 5 -4 2]
[heso_TS,heso_MS]=Cautrucnoitiep(TS,MS)
%H(z)=(1 - 0.7554*z(-1) + 0.3475*z(-2)/(1 - z^(-1) + 3*z^(-2)) *(1 + 5.7554*z^(-1)) / (1 - 1*z^(-1))