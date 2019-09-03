function fC = f(t,~,y)
global h_bar qx qy
if K(qx,qy,t)~=0
    fC=(-1i/h_bar)*[Fx(t),Fy(t)]*[Ax(Kx(qx,t),Ky(qy,t));Ay(Kx(qx,t),Ky(qy,t))]*exp(1i*Phi(t))*y;
else
    fC=0;
end