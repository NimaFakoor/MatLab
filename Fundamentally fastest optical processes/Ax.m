function NBConnectionX = Ax(qx,qy)
global A2 A3 
NBConnectionX=(1+(4*qx^2*(qx^2-3*qy^2)^2)/(A2^2*(qx^2+qy^2)/A3^2))^(-1/2)*(1/(qx^2+qy^2))*((-qy/2)-1i*(2*qx^4+3*qy^2*(qx^2-qy^2))/sqrt(4*qx^2*(qx^2-3*qy^2)^2+(A2/A3)^2*(qx^2+qy^2)));

