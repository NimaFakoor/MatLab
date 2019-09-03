function FY = Fy(t)
global F0 T Theta
FY=F0*(1-2*(t/T)^2)*exp(-(t/T)^2)*sin(Theta);