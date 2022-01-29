set(0,'defaultFigureWindowStyle','docked') % taken from class
set(0,'defaultaxesfontsize',20)
set(0,'DefaultLineLineWidth',2)
clear all
close all

%define vars
x = 0;
v = 0;
t = 0;
dt = 1;
nt = 1000;
F = 1;
m = 1;
p = 0.05;%chance of scatter v resetting to 0
vAverage = 0;
%add rand() 

for i=2:nt
 %update 
%v+
  vNext = v+1;
%x+
  xNext = x+vNext;
 
vAverage = vAverage + vNext;
 %scattering
 if rand() < p
     vNext = 0;
 end
 
 %plots using -> (rows,colmns,plot#)taken form class
 %plot1 v vs t
 subplot(3,1,1)
 plot([i-1 i],[v vNext])
 plot(i,vAverage/i,'x')
  hold on
   title('Average v:', vAverage/i)
   xlabel ('time')
   ylabel ('v')
   
 %plot2 x vs v   
 subplot(3,1,2)
 plot([x xNext],[v vNext])
 plot(xNext,vAverage/i,'x')
 hold on
 title('v.x')
 xlabel ('x')
 ylabel ('v')
   
 %plot3 x vs t
 subplot(3,1,3)
 plot([i-1 i],[x xNext])
 hold on
 title('x.t')
 xlabel ('t')
 ylabel ('x')
 
 % update x and v 
 x = xNext;
 v = vNext;
 pause(0.01)
end