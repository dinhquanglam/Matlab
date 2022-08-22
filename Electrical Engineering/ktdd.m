syms i it t VC VR
it = dsolve(' 1e3*1e-6*Dit+it-1e_6*diff(5*sin(1000*t),t) ' , ' it(0)=0 ');
VR = it*1e3;
VC = 5*sin(1000*t)-VR;
plot(5*sin(1000*t), [0 0.02])
Xlim([ 0 0.02])
Ylim([-5.5 5.5])
