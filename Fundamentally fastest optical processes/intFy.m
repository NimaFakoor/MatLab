function intfY = intFy(t)
global F0 Theta
intfY=F0*1.51927*exp(-t^2)*t*sin(Theta);
%Fx(t) = 2F0ue?u
%intfX=F0*1.51927*exp^(-t^2)*t*cos(Theta); %this is an syntax errore
%intfX=F0*1.51927*exp.^(-t^2)*t*cos(Theta);
