%Instituto Tecnológico y de Estudios Superiores de Monterrey
%Name: Carlos Hernán Auquilla Larriva
%Course: Autonomy of Unmanned Aerial Vehicles
%Last update: August 12th 2024
clc; clear;

%%Practice 1

%load('a00834778_P1.mat');
%Parameters
rm = 7.5;
kt = 0.0422;
km = 0.0422;
jm = 1.4e-6;
lm = 1.15e-3;
mh = 0.0106;
rh = 0.0111;
md = 0.053;
rd = 0.0248;
u = -2e-3;  %Qube servo, SN: 56856
jh = 0.5 * mh * rh^2;
jd = 0.5 * md * rd^2;
jeq = jm + jh + jd;

%R.6
a = (km+u)*kt/(rm*jeq);
b = kt/(rm*jeq);