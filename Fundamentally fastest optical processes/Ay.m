function NBConnectionY = Ay(qx,qy)
global A2 A3 
NBConnectionY=(1+(4*qx^2*(qx^2-3*qy^2)^2)/(A2^2*(qx^2+qy^2)/A3^2))^(-1/2)*(1/(qx^2+qy^2))*((qx/2)+i(qx*qy(7*qx^2+3*qy^2))/sqrt(4*qx^2*(qx^2-3*qy^2)^2+(A2/A3)^2*(qx^2+qy^2)));