clc
clear
close all

global A1 A2 A3 F0 T c e h_bar t0 t1 x0 y0 n d h qx qy %you forget defind Theta :)
global Theta
%([h_bar]=eVfs , [t]=fs , [e]=1 , [k]=Ang^(-1) , [F]=V/Ang)
A1= 23.725; A2=3.297; A3=25.045;
F0=0.1; T=1; c=1; e=1; h_bar=0.658209; t0=-3.5; t1=3.5; x0=0; y0=1; n=50;

t=20;
%t=linspace(-3.5,3.5,100);
%t=linspace(0,20,100);

q0x=(-0.75:0.08:0.75);%you have to use linspace command in matlab to prevent ERROR :)
%ex:
%q0x=linspace(-0.75,0.75,100);
q0y=(-0.75:0.08:0.75);

d=length(q0x);
h=(t1-t0)/n;
Q=[0,pi/4,pi/3,pi/2];
qxmin=-0.75;
qxmax=0.75;
qymin=-0.75;
qymax=0.75;

for r=1:4
    Theta=Q(r);
    SS=zeros(d*d,1);
    s=0;
    for i=1:length(q0x)
        for j=1:length(q0y)
            qx=q0x(i);
            qy=q0y(j);
            
            clear x y;
            
            
            %DDD=H0(Kx(qx,t),Ky(qy,t));
            D=eig(H0(Kx(qx,t),Ky(qy,t)));
            
            Ev=D(1);
            disp(Ev);
            Ec=D(2);
            E0v=A1*(qx^2 + qy^2)-sqrt(A2^2*(qx^2 + qy^2)+4*A3^2*qx^2*(qx^2-3*qy^2)^2);
            E0c=A1*(qx^2 + qy^2)+sqrt(A2^2*(qx^2 + qy^2)+4*A3^2*qx^2*(qx^2-3*qy^2)^2);
            
            % Phi=int((1/h_bar)*((Ec-Ev)-(E0c-E0v)),'t',-3.5,t);
            
            %           syms t
            %Phi=int(((1/h_bar)*((Ec-Ev)-(E0c-E0v))),-3.5,3.5);
            
                       syms tttx
            Phi=int(((1/h_bar)*((Ec-Ev)-(E0c-E0v))),tttx,-3.5,3.5);
            
            
            y=y0; x=x0; t=t0;
            
            for w=1:1:n
                K1=f(t,x,y);
                L1=g(t,x,y);
                K2=f(t+h/2,x+(h*K1/2),y+(h*L1/2));
                L2=g(t+h/2,x+(h*K1/2),y+(h*L1/2));
                K3=f(t+h/2,x+(h*K2/2),y+(h*L2/2));
                L3=g(t+h/2,x+(h*K2/2),y+(h*L2/2));
                K4=f(t+h/2,x+(h*K3),y+(h*L3));
                L4=g(t+h/2,x+(h*K3),y+(h*L3));
                k=(K1 + 2*K2 +2*K3 + K4)/6;
                l=(L1 + 2*L2 +2*L3 + L4)/6;
                x = x + h*k;
                y = y + h*l;
                t = t + h;
                xd = conj(x);
                if w==n
                    s=s+1;
                    SS(s,1)=real(x*xd);
                end
            end
        end
    end
    disp(SS(:,1))
    spectral=zeros(d,d);
    for u=0:(length(q0x)-1)
        for m=(1+u*length(q0x)):length(q0x)*(1+u)
            spectral(m-u*length(q0x),u+1)=SS(m,1);
        end
    end
    contourf(q0x,q0y,spectral);
    axis equal
end



