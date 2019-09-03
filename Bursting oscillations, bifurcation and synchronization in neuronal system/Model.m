function [ Vp , wp , up ] = Model( u, V , w )

%BurstingOscillationsModel

% This is the modified ML neuronal model, which is based on the famous two-dimensional Morris–Lecar model by changing the externally applied current I to be a slow linear feedback a + bu.
%Here, u is governed by a linear differential equation. Resultantly, the full system can be written as :

% V = 0.1
% u = 0.090766,

%%%%% constant of system  %%%%%
%  maximum conductance values
gl=0.5;
gk=2;
gca=1.36;%from case 1

%potentials
Vl=-0.5;
Vk=-0.7;
Vca=1;
%
v1=-0.01;
v2=0.15;
%
a=0;%from case 1
b=-1;%from case 1
c=0.1;%from case 1
mu=0.005;%from case 1
d=0.1;%from case 1
e=0;%from case 1
v4=0.16;%from case 1


%Conditions
v3=d+e*u;%7
m_inf = @(V) ((1/2)*(1+(tanh((V-v1)/v2)))); %4
w_inf = @(V) ((1/2)*(1+(tanh((V-v3)/v4)))); %5
landa = @(V) ((1/3)*(cosh((V-v3)/2*v4)));%6
%Conditions


%Full System 
Vp = (-gl*(V-Vl))-(gk*w*(V-Vk))-(gca*m_inf(V)*(V-Vca))+(a+b*u);
wp = landa(V)*(w_inf(V)-w);
up = mu*(V+c);
%Full System 

% return Vp,wp,up;

end