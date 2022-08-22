clear
syms vc t
% Case I, R = 300:
vc = dsolve('(1e-8)*D2vc + (1e-6)*300*Dvc+ vc =10', 'vc(0) = 0','Dvc(0)=0');
vpa(vc,4)
ezplot(vc, [0 1e-3])
hold on % Turn hold on so all plots are on the same axes
% Case II, R = 200:
vc = dsolve('(1e-8)*D2vc + (1e-6)*200*Dvc+ vc =10', 'vc(0) = 0','Dvc(0)=0');
vpa(vc,4)
ezplot(vc, [0 1e-3])
% Case III, R = 100:
vc = dsolve('(1e-8)*D2vc + (1e-6)*100*Dvc+ vc =10', 'vc(0) = 0','Dvc(0)=0');
vpa(vc,4)
ezplot(vc, [0 1e-3])