function gV = g(t,x,~)
global h_bar qx qy 
if K(qx,qy,t)~=0
    gV=(-1i/h_bar)*[Fx(t),Fy(t)]*conj([Ax(Kx(qx,t),Ky(qy,t));Ay(Kx(qx,t),Ky(qy,t))])*exp(-1i*Phi(t))*x;
else
   gV=0; 
end
