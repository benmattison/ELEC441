%% Qdesign.m
% This script generates a Q-designed controller based on input
% parameters Wn and zeta. The data from this script is then read directly
% into Simulink blocks for use in simulations.

%% Design Variables
Ki0 = -0.075; % need to design for no uncertainty

syms x

%% Best Params
% Wn = 0.09;
% zeta = 6;

Wn = 1/14;
zeta = 4.75;

%% Extra integrator param
alpha = Wn^2*(2*zeta+1)/Wn^3;

%% no intergrator
num = expand(Wn^2*(Ti*x+1)*x);
den = expand(Ki0*(x^2+2*Wn*zeta*x+Wn^2));
numc = [0 double(coeffs(num))];
denc = double(coeffs(den));

%% with integrator
inum = expand(Wn^3*(Ti*x+1)*x*(alpha*x+1));
iden = expand(Ki0*(x^2+2*Wn*zeta*x+Wn^2)*(x+Wn));
inumc = [0 double(coeffs(inum))];
idenc = double(coeffs(iden));

%% controller
Cnum = expand(Wn^2*(Ti*x+1));
Cden = expand(Ki0*(x+2*zeta*Wn));
Cnumc = double(coeffs(Cnum));
Cdenc = double(coeffs(Cden));