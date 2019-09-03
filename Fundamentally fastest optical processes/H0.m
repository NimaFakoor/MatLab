function h = H0(qx,qy)
global A1 A2 A3 

h0=(A1*(qx^2+qy^2));
h1=(A3*((qx + 1i*qy)^3 +(qx - 1i*qy)^3));%IN POLAR MODE WE CAN REDUCE THE ERROR
h2=(A2*(qy + 1i*qx));
h3=(A2*(qy - 1i*qx));
h = [h0+h1 , h2 ; h3 , h0-h1];
end