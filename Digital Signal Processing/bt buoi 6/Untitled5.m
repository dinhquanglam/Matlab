%VD2: y(n) - 2y(n-1) + 4y(n-2)- 3y(n-3)= x(n) + 5x(n-1) - 4x(n-2) +2x(n-3)
 
 MS = [1 -2 4 -3]; %mau so
TS = [ 1 5 -4 2]; %tu so

root_MS = roots(MS);
root_TS = roots(TS);
root_TS = cplxpair(root_TS) % sap xep nghiem phuc len truoc)
root_MS = cplxpair(root_MS)

%chuyen doi tu cac nghiem sang da thuc
%tu so
poly([root_TS(1) , root_TS(2)])

% (1 - 0.7554*z(-1) + 0.3475*z(-2))* (1 + 5.7554*z^(-1))