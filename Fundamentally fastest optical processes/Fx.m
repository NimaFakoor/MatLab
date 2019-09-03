function FX = Fx(t)
global F0 T Theta
FX=F0*(1-2*(t/T)^2)*exp(-(t/T)^2)*cos(Theta);