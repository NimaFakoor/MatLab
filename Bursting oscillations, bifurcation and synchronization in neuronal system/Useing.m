%BurstingOscillationsModel
% Model( u, V , w )

clc;
clear;

% ???? ??? ????? u
%  Vp , wp , up ?? ?????
%??? ???? ?????? ? ?????? ?????? ?? ?? ??????
% u: (a) u = 0.03, (b)u = 0.05, (c) u = 0.07107, (d) u = 0.078, (e) u = 0.090766, (f) u = 0.1.
% [ Vp , wp , up ] = Model(0 , 0, 0)

A=[1 1 1; 1 1 1 ; 1 1 1];
b=[1];

 [ Vp , wp , up ]= Model(0.5 , A, b)