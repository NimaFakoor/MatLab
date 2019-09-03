function intfX = intFx(t) 
global F0 Theta
intfX=F0*1.51927*exp(-t^2)*t*cos(Theta);
%Fx(t) = 2F0ue?u
%intfX=F0*1.51927*exp^(-t^2)*t*cos(Theta);  
%intfX=F0*1.51927*exp.^(-t^2)*t*cos(Theta);
