clear all
close all

T1 = 300;
T2 = 16;
D = 100:0.1:200;

C1 = T1*2;
C2 = T2*2;
R1 = C1/2/pi;
R2 = C2/2/pi;
phi = tan((R1-R2)./D);
L1 = (pi+phi*2)*R1;
L2 = (pi-phi*2)*R2;
xP1 = R1*sin(phi);
yP1 = R1*cos(phi);
xP2 = R2*sin(phi);
yP2 = R2*cos(phi);
dx = D-xP1+xP2;
dy = yP1-yP2;
L3 = sqrt(dx.^2+dy.^2);
L = L1+L2+L3*2;

figure
plot(D,L)



